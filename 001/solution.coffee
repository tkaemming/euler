#!/usr/bin/env coffee
_ = require 'underscore'

denominators = [3, 5]
max = 1000

sum = (list) ->
    _.reduce list, ((memo, value) -> memo + value), 0

console.log sum _.filter [1...max], (numerator) ->
    _.any denominators, (denominator) ->
        numerator % denominator is 0
