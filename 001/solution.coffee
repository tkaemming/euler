#!/usr/bin/env coffee
_ = require 'underscore'

denominators = [3, 5]

divisble = (numerator, denominator) ->
    numerator % denominator is 0

test = (numerator) ->
    _.any denominators, (denominator) ->
        divisble numerator, denominator

sum = (list) ->
    reducer = (memo, value) -> memo + value
    _.reduce list, reducer, 0

result = sum _.filter [1...1000], test
console.log result
