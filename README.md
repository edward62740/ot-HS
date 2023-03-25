# ot-HS

## Overview
This is a temperature/humidity sensor designed for operation around saturation RH, to provide accurate data to HVAC systems.
To facilitate accurate readings, the sensor runs a simple algorithm to run a heater and compensate for creep errors.
The sensor communicates using OpenThread and periodically sends data over CoAP. It also registers a generic IP advertisement service with the "nearest" SRP server.
<br><br>

<img src="https://github.com/edward62740/ot-HS/blob/master/Doc/hs.jpeg" width="450">

## Design
This device consists of a STM32WB5MMGH6TR module, SHT41 T/RH sensor and STTS22 T sensor as reference for the algorithm.
It is powered from a single ER14250 cell.
<br><br>

<img src="https://github.com/edward62740/ot-HS/blob/master/Doc/pcb.jpeg" width="450">


## Algorithm
The diagram below shows the state transition diagram for the algorithm. At a high level, the algorithm simply applies a hysteresis to the output state based on
a queue of previous measurements, and ensures that the application layer is notified when sensor data should be disregarded (i.e during and after heater runs).
It also notifies the application layer when to run the heater.

<img src="https://github.com/edward62740/ot-HS/blob/master/Doc/fsm.png" width="450">

## Power Consumption
Power consumption averages 9uA with a 5s polling, 60s measurement period.
On a 1200mAh ER14250 cell, a rough estimate is 5-10 years of battery life, given the pulse currents from the radio do not exceed 25mA within a 10μs sample interval, and no issues with Thread network with average retransmissions <=3. It is assumed that the ESR/L of the MLCC is sufficiently low to absorb most of the di/dt from radio transmissions.
<br>
<img src="https://github.com/edward62740/ot-HS/blob/master/Doc/power.png" width="650">