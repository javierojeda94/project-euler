# https://projecteuler.net/problem=2
class Problem2
  def solve
    n = 1
    sum = 0
    loop do
      term = fibonacci(n)
      sum += term if term.even?
      n = n.next
      break if term >= 4_000_000
    end
    puts sum
    sum
  end

  def fibonacci(n)
    return 1 if [1, 2].include?(n)
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

problem = Problem2.new
problem.solve