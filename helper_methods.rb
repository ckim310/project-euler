def fibonacci(n)
  return n if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

def print_fibonacci_array(n)
  array = []

  n.times do |i|
    array << fibonacci(i + 1)
  end

  puts "fibonacci array: #{array}"
end

def run_max_4000000
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
