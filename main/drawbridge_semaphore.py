#!/usr/bin/env python
# Pseudocode

# drawbridge_semaphore.py
# Date  : 07 April 2016
# Author: Ankit Pati

# initial condition
entities = 0    # no cars or ships
down = True     # semaphore (only one resource, so boolean); bridge is down

def P_car():
    while not down and entities:
        pass # busy wait
    entities += 1
    down = True     # no more ships, so lower the bridge

def P_ship():
    while down and entities:
        pass # busy wait
    entities += 1
    down = False    # no more cars, so raise the bridge

def V():
    entities -= 1

# end of drawbridge_semaphore.py
