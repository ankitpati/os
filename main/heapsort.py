#!/usr/bin/env python3

# heapsort.py
# Date  : 29 April 2016
# Author: Ankit Pati

# heapsort code
def heapsort(array):
    # convert array to heap
    last = len(array) - 1
    for i in range((last - 1) // 2, -1, -1): # floor((i - 1) / 2) is parent of
        move_down(array, i, last)            # any element with index i

    # flatten heap into sorted array
    for i in range(last, 0, -1):
        if array[0][1] > array[i][1]:
            swap(array, 0, i)
            move_down(array, 0, i - 1)

def move_down(array, first, last):
    # left child = 2 * first + 1; right child = 2 * first + 2
    largest = 2 * first + 1     # assume left > parent and left > right

    while largest <= last:
        # right child exists and right > left
        if largest < last and array[largest + 1][1] > array[largest][1]:
            largest += 1        # largest now points to right child

        # max(left, right) > parent
        if array[largest][1] > array[first][1]:
            swap(array, largest, first)
            # move down to largest child
            first = largest
            largest = 2 * first + 1
        else:
            return

def swap(A, x, y):
    temp = A[x]
    A[x] = A[y]
    A[y] = temp
# end of heapsort code

if __name__ == "__main__":
    print("Enter Priorities")
    array = [
        ['M', input("Multiplication : ")],
        ['A', input("Addition       : ")],
        ['S', input("Subtraction    : ")],
        ['D', input("Division       : ")]
    ]

    print()
    print("Entered List :", array)
    heapsort(array)
    print("Sorted  List :", array)
# end of heapsort.py
