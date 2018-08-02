# https://projecteuler.net/problem=7
require 'benchmark'

class Problem7
  def solve(n = 10_001)
    # based on the AKS primality test
    upper_bound = (n * ln(n) + n * ln(ln(n))).to_i
    primes_in_range = sieve_of_eratosthenes(upper_bound)
    puts primes_in_range[n - 1]
    primes_in_range[n - 1]
  end

  def sieve_of_eratosthenes(n)
    numbers = Array.new(n, true)
    (2..Math.sqrt(n)).each do |i|
      m = 0
      next unless numbers[i]
      loop do
        j = i * i + m * i
        break if j > n
        numbers[j] = nil
        m += 1
      end
    end
    numbers.each_index.reject { |i| numbers[i].nil? }.drop(2)
  end

  def ln(n)
    Math.log(n, Math::E)
  end
end

problem = Problem7.new

Benchmark.bm do |x|
  x.report { problem.solve }
end