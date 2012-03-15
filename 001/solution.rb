#!/usr/bin/env ruby
max = ARGV.fetch(0, 1000).to_i
denominators = ARGV.drop(1).collect { |i| i.to_i }
if denominators.empty?
  denominators = [3, 5]
end

result = (1...max).reduce(0) do |memo, numerator|
  if denominators.any? { |denominator| numerator % denominator == 0 }
    memo + numerator
  else
    memo
  end
end

puts result
