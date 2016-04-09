#!/usr/bin/env python
# Pseudocode

# barbershop_monitor.py
# Date  : 07 April 2016
# Author: Ankit Pati

class barbershop:
    '''Monitor-Based Solution to the Barber Shop Problem'''

    'Private Data'
    __barberfree = None
    __waitingchairs = None

    'Entry Queue'
    __queue = None

    'Initialisation Procedure'
    def __init__(self):
        '''initial conditions'''
        self.__barberfree = True
        self.__waitingchairs = 10
        self.__queue = []

    'Monitor Procedures'
    def request_barber(customer_name):
        '''called by every new customer'''
        if __barberfree:
            __barberfree = False
        elif __waitingchairs:
            __waitingchairs -= 1
            __queue.append(customer_name)
        else:
            print("Barber not free, and waiting chairs not available.")

    def request_customer():
        '''called by barber after serving each customer'''
        if __waitingchairs == 10:
            __barberfree = True
        else:
            __waitingchairs += 1
            print("Next Customer: ", __queue.pop(0))

# end of barbershop_monitor.py
