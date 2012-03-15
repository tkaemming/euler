#!/usr/bin/env ruby
max = ARGV.fetch(0, 1000).to_i
denominators = ARGV.drop(1).collect { |i| i.to_i }
if denominators.empty?
  denominators = [3, 5]
end

puts (1...max).select { |numerator|
  denominators.any? { |denominator| numerator % denominator == 0 }
}.reduce(:+)
