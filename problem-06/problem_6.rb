# https://projecteuler.net/problem=6
require 'benchmark'

class Problem6
  def solve
    numbers = 1..100
    sum_of_squares = 0
    square_of_sum = 0
    numbers.each do |number|
      sum_of_squares += (number * number)
      square_of_sum += number
    end
    square_of_sum *= square_of_sum
    difference = (sum_of_squares - square_of_sum).abs
    puts difference
    difference
  end
end

problem = Problem6.new

Benchmark.bm do |x|
  x.report { problem.solve }
end