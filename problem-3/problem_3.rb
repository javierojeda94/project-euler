# https://projecteuler.net/problem=3
require 'benchmark'

class Problem3
  def solve(n = 600_851_475_143)
    biggest_factor = 2
    (2..(n / 2)).each do |i|
      if (n % i).zero?
        n /= i
        biggest_factor = i
      end
      break if n == 1
    end
    puts biggest_factor
    biggest_factor
  end
end

problem = Problem3.new

Benchmark.bm do |x|
  x.report { problem.solve }
end

