# Benchmark for each problem solution

This table shows the benchmark run on each problem using the [`Benchmark`](http://ruby-doc.org/stdlib-2.0.0/libdoc/benchmark/rdoc/Benchmark.html) module from the `Ruby` language.

You can see the column `status`, which can take one of these values:
* OK: Everything is good. I think it's a good timing.
* CI: Can be improved. The time is good based on the Project Euler that says: [Each problem has been designed according to a "one-minute rule"](https://projecteuler.net/about). However I think that my implementation can be improved to achieve a better performance. 
* NO: Not good. I found the solution but it takes more than a minute to solve it, so it is not correct (again, based on the "one-minute-rule").
* UN: Unsolved. If for some reason I commit a problem solution that is partially complete, you will see this value on that `status` column.

| Problem | user | system | total | real | status
|---|---|---|---|---|---|
| [Multiples of 3 and 5](problem-1/problem_1.rb) | 0.000000 | 0.000000 | 0.000000 | 0.000145 | OK
| [Even Fibonacci numbers](problem-2/problem_2.rb) | 2.810000 | 0.000000 | 2.810000 | 2.828140 | CI
| [Largest prime factor](problem-3/problem_3.rb) | 0.000000 | 0.000000 | 0.000000 | 0.000610 | OK
| [Largest palindrome product](problem-4/problem_4.rb) | 0.060000 | 0.000000 | 0.060000 | 0.054729 | OK
| [Smallest multiple](problem-5/problem_5.rb) | 0.000000 | 0.000000 | 0.000000 | 0.000155 | OK
| [Sum square difference](problem-6/problem_6.rb) | 0.000000 | 0.000000 | 0.000000 | 0.000033 | OK 
## Solutions format:

I'm using a simple format for the code. Each problem has it's own folder with a single `.rb` file containing the solution.

Every solution has this template:

```ruby
require 'benchmark'

class Problem
  def solve
    # solution code...
  end
end

problem = Problem.new

Benchmark.bm do |b|
  b.report { problem.solve }
end
```
I did it that way so any of you can grab that class and use it anywhere else. Just in case you wanna do it :)

At this moment I'm not thinking about improving/changing that template, I wanna focus on solving the problems.
## Notes:
* If you know any good reference to better understand the columns in the benchmark I'd appreciate if you share that information with me.
* If you consider you know a better solution (using Ruby) for any of the _solved_ problems (OK, CI statuses) feel free to open a PR with your solution. It would be awesome for me to learn from other developers! 
    * Also, I'm considering adding other dev's solutions into this repo. I'm just wondering how I might do it. Again, I'm open to suggestions.   