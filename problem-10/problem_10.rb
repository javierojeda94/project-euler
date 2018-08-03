# https://projecteuler.net/problem=10
require 'benchmark'

class Problem10
  def solve(n = 2_000_000)
    sum = sieve(n).reduce { |a, b| a + b }
    puts sum
    sum
  end

  def sieve(n)
    nums = Array.new(n, true)
    (2..n).each do |i|
      m = 0
      loop do
        j = i * i + m * i
        break if j > n
        nums[j] = nil
        m = m.next
      end
    end
    nums.each_index { |i| nums[i] = i if nums[i] }.reject(&:nil?).drop(2)
  end
end

problem = Problem10.new

Benchmark.bm do |x|
  x.report { problem.solve }
end