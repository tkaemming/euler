#!/usr/bin/env python
import argparse
from itertools import ifilter
from functools import partial

def divisible(denominator, numerator):
    return (numerator % denominator) is 0

def keep(predicates, value):
    return any((predicate(value) for predicate in predicates))

def filter_divisible(denominators, sequence):
    """
    Filters all the numbers out of `sequence` that are divisible by any of `denominators`.
    """
    predicates = [partial(divisible, denominator) for denominator in denominators]
    return ifilter(partial(keep, predicates), sequence)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="prints the sum of all "
        "integers divisible by denominators up to the provided maximum integer")
    parser.add_argument('maximum', metavar='max', type=int)
    parser.add_argument('denominators', metavar='denominator', type=int, nargs='+')
    options = parser.parse_args()
    print sum(filter_divisible(options.denominators, xrange(1, options.maximum)))
