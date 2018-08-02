# https://projecteuler.net/problem=9
require 'benchmark'

class Problem9
  def solve
    result = 0
    total = 1000
    (1..(total / 3)).each do |a|
      ((a + 1)..(total / 2)).each do |b|
        c = 1000 - a - b
        result = a * b * c if (a * a) + (b * b) == (c * c)
        break if result > 0
      end
      break if result > 0
    end
    puts result
    result
  end
end

problem = Problem9.new

Benchmark.bm do |x|
  x.report { problem.solve }
end
