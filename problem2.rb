require 'pry'
require './helper_methods.rb'

def sum_fibonacci_even_sequence(max_fib_value)
  sum = 0
  term = 1

  while fibonacci(term) <= max_fib_value
    term_value = fibonacci(term)

    sum += term_value if term_value.even?

    term += 1
  end

  print_fibonacci_array(term - 1)
  sum
end
