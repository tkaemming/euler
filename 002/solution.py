#!/usr/bin/env python
from itertools import ifilter, takewhile

def fibonacci(start=1):
    """Generates an infinite length Fibonacci sequence."""
    a, b = 0, start
    while True:
        c = a + b
        yield c
        a, b = b, c

def is_even(n):
    """Returns True if a number is even."""
    return n % 2 == 0

maximum = 4 * 1e6
print sum(takewhile(lambda x: x < maximum, ifilter(is_even, fibonacci())))
