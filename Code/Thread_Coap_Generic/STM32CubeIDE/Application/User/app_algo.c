#include "app_algo.h"

static const int32_t HUMIDITY_TRIG_TH_POS = 74000;
static const int32_t HUMIDITY_TRIG_TH_NEG = 75000;
static const uint8_t HUMIDITY_SAMPLES_TRIG_TH = 5;
static const int32_t TEMPERATURE_COOLDOWN_MAX_ALLOWED_DELTA = 2000;

typedef enum
{
	STATE_INIT,
	STATE_MEAS,
	STATE_PRETRIG,
	STATE_HEATING,
	STATE_COOLDOWN,
	STATE_UNDEF = -1
} eStateFsm;

// Basic queue-like linked list for storing short-term sensor data
typedef struct node
{
	struct node *next;
	SensorData_t data;
} SensorDataNode;

typedef struct
{
	SensorDataNode *front;
	SensorDataNode *rear;
	uint8_t size;
} SensorQueueLL;

struct
{
	SensorQueueLL *data_hist;
	eStateFsm cur_state;
	int32_t baseline_temp_delta;
} fsm;

SensorQueueLL* create_sensor_LL(void)
{
	return calloc(1, sizeof(SensorQueueLL));
}

void update_sensor_LL(SensorQueueLL *ll, SensorData_t dat)
{
	 __disable_irq( );
	SensorDataNode *new = calloc(1, sizeof(SensorQueueLL));
	if(new == NULL) return;
	new->data = dat;
	if (ll->size == 0)
	{
		ll->front = new;
		ll->rear = new;
		ll->size = 1;
	}
	else
	{
		if (ll->size >= 10)
		{
			SensorDataNode *del = ll->front;
			ll->front = ll->front->next;
			free(del);
			ll->size--;
		}
		ll->rear->next = new;
		ll->rear = new;
		ll->size++;
	}
	__enable_irq();
	APP_DBG("LL  size :%d\n",ll->size);
}

uint8_t traverse_sensor_LL(SensorQueueLL *ll, bool isHum, int32_t l_th, int32_t u_th, int32_t *avg_temp, int32_t *avg_hum)
{
	SensorDataNode *cur = ll->front;
	uint8_t ret = 0, ctr = 0;
	while (cur)
	{
		if (isHum && (cur->data.humidity < l_th || cur->data.humidity > u_th))
			ret++;
		else if (!isHum && (cur->data.temp_main < l_th || cur->data.temp_main > u_th))
			ret++;
		cur = cur->next;
		(*avg_temp) += cur->data.temp_main;
		(*avg_hum) += cur->data.humidity;
		ctr++;
	}
	APP_DBG("LL Length:%d, size :%d\n", ctr,ll->size);
	(*avg_temp) /= ctr==0?1:ctr;
	(*avg_hum) /= ctr==0?1:ctr;
	return ret;
}

void app_algo_init(SensorData_t data)
{
	fsm.data_hist = create_sensor_LL();
	fsm.data_hist->size = 0;
	fsm.cur_state = STATE_INIT;
	fsm.baseline_temp_delta = data.temp_main - (int32_t)data.temp_aux;
}

eResFsm app_algo_proc(SensorData_t data, bool ext_sig_reset)
{
	update_sensor_LL(fsm.data_hist, data);

	if (ext_sig_reset)
	{
		fsm.cur_state = STATE_INIT;
		return RES_NONE;
	}

	switch (fsm.cur_state)
	{
	case STATE_INIT:
	{
		fsm.cur_state = STATE_MEAS;
		APP_DBG("FSM STATE INIT");
		return RES_NONE;
	}
	case STATE_MEAS:
	{
		APP_DBG("FSM STATE MEAS");
		if (data.humidity > HUMIDITY_TRIG_TH_POS)
			fsm.cur_state = STATE_PRETRIG;
		return RES_NONE;
	}
	case STATE_PRETRIG:
	{
		APP_DBG("FSM STATE PRETRIG\n");
		if (data.humidity < HUMIDITY_TRIG_TH_POS)
		{
			fsm.cur_state = STATE_MEAS;
			return RES_NONE;
		}
		int32_t t, h;
		uint8_t ct = traverse_sensor_LL(fsm.data_hist, true, -1, HUMIDITY_TRIG_TH_POS, &t, &h);
		APP_DBG("Pretrig ctr:%d", ct);
		if (ct >= HUMIDITY_SAMPLES_TRIG_TH)
		{
			fsm.cur_state = STATE_HEATING;
			return RES_HEAT;
		}
		return RES_NONE;
	}
	case STATE_HEATING:
	{
		APP_DBG("FSM STATE HEATING");
		fsm.cur_state = STATE_COOLDOWN;
		return RES_NONE;
	}
	case STATE_COOLDOWN:
	{
		APP_DBG("FSM STATE COOLDOWN");
		if(data.temp_main - data.temp_aux < fsm.baseline_temp_delta + TEMPERATURE_COOLDOWN_MAX_ALLOWED_DELTA)
		{
			fsm.cur_state = STATE_MEAS;
			return RES_NONE;
		}
		else
		{
			return RES_INVL;
		}
	}
	case STATE_UNDEF:
		return RES_FAULT;
	}
	return RES_FAULT;
}

