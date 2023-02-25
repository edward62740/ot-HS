# ot-HS

## Overview
This is a temperature/humidity sensor designed for operation around saturation RH, to provide accurate data to HVAC systems.
To facilitate accurate readings, the sensor runs a simple algorithm to run a heater and compensate for creep errors.
The sensor communicates using OpenThread and periodically sends data over CoAP. <br>
![HS](https://github.com/edward62740/ot-HS/blob/master/Doc/hs.jpeg)<br>

## Design
This device consists of a STM32WB5MMGH6TR module, SHT41 T/RH sensor and STTS22 T sensor as reference for the algorithm.
<br>
![PCB](https://github.com/edward62740/ot-HS/blob/master/Doc/pcb.jpeg)<br>


## Algorithm
The diagram below shows the state transition diagram for the algorithm. At a high level, the algorithm simply applies a hysteresis to the output state based on
a queue of previous measurements, and ensures that the application layer is notified when sensor data should be disregarded (i.e during and after heater runs).
It also notifies the application layer when to run the heater.

![FSM](https://github.com/edward62740/ot-HS/blob/master/Doc/fsm.png)<br>

## Power Consumption
