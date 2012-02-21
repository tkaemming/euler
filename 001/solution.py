#!/usr/bin/env python
import argparse, functools, itertools

def divisible(denominator, numerator):
    return (numerator % denominator) is 0

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('maximum', metavar='max', type=int)
    parser.add_argument('denominators', metavar='denominator', type=int, nargs='+')
    options = parser.parse_args()

    tests = [functools.partial(divisible, denominator) for denominator in options.denominators]
    def keep(number):
        return any((test(number) for test in tests))

    print sum(itertools.ifilter(keep, xrange(1, options.maximum)))
