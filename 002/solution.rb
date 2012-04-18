#!/usr/bin/env ruby
fibonacci = Enumerator.new do |result|
  a = b = 1
  loop do
    result << a
    a, b = b, a + b
  end
end

maximum = 4_000_000
puts fibonacci.take_while { |x| x < maximum }.select { |x| x % 2 == 0 }.reduce :+
