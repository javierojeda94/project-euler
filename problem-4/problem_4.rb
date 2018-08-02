# https://projecteuler.net/problem=4
require 'benchmark'

class Problem4
  def solve
    range = 999.downto(100)
    biggest_palindrome = 0
    range.each do |factor_a|
      range.each do |factor_b|
        result = factor_a * factor_b
        if result > biggest_palindrome && palindromic?(result)
          biggest_palindrome = result
          break
        end
      end
    end
    puts biggest_palindrome
    biggest_palindrome
  end

  def palindromic?(n)
    n.to_s == n.to_s.reverse
  end
end

problem = Problem4.new

Benchmark.bm do |x|
  x.report { problem.solve }
end