#ifndef APP_ALGO_H
#define APP_ALGO_H

#include "app_common.h"
#include "main.h"
#include "stdbool.h"
#include "stm_logging.h"

typedef enum {
	RES_NONE, RES_HEAT, RES_INVL, RES_FAULT = -1
} eResFsm;

void app_algo_init();
eResFsm app_algo_proc(SensorData_t data, bool ext_sig_reset);

#endif //APP_ALGO_H
