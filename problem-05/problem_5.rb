# https://projecteuler.net/problem=5
require 'benchmark'

class Problem5
  def solve(range = (1..20).to_a)
    factor = 2
    mmc = 1
    while range.uniq != [1]
      new_range = range.map { |n| (n % factor).zero? ? n / factor : n }
      if new_range != range
        mmc *= factor
        range = new_range
      else
        factor = factor.next
      end
    end
    puts mmc
    mmc
  end
end

problem = Problem5.new

Benchmark.bm do |x|
  x.report { problem.solve }
end