# https://projecteuler.net/problem=1
require 'benchmark'

class Problem1
  def solve(num = 1000)
    sum = 0
    (1...num).each do |n|
      sum += n if (n % 3).zero? || (n % 5).zero?
    end
    puts sum
    sum
  end
end

problem = Problem1.new

Benchmark.bm do |x|
  x.report { problem.solve }
end
