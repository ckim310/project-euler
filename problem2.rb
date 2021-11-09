require 'pry'

def fibonacci(n)
  return n if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

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

def print_fibonacci_array(n)
  array = []
  while n >= 1
    array << fibonacci(n)
    n -= 1
  end
  puts "fibonacci array: #{array.reverse}"
end

def run
  puts "Sum of even-valued term where fibonacci sequence whose value does not exceed 4,000,000:"
  puts "sum of even-valued terms: #{sum_fibonacci_even_sequence(4_000_000)}"
end

def run_test
  puts "\nWant to test another max value? Y or N"
  testing = gets.chomp

  if testing.upcase == 'Y'
    puts "What max value would you like to test:"
    max_value = gets.chomp
    test_max_value(max_value.gsub(',', '').to_i)
  else
    return
  end

  run_test
end

def test_max_value(value)
  if value > 1
    puts "sum of even-valued terms: #{sum_fibonacci_even_sequence(value)}"
  else
    puts "#{value} is not a valid value. Try again."
    run_test
  end
end

run
# run_test
