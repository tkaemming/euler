#!/usr/bin/env ruby
max = 1000
denominators = [3, 5]

puts (1...max).select { |numerator|
  denominators.any? { |denominator| numerator % denominator == 0 }
}.reduce(:+)
