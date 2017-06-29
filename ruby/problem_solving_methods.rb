# Release 0
def search_array(array, number)
  position = nil
  array.length.times do |index|
    # Check array[index] == number
    position = index if array[index] == number
  end
  return position
end

# p search_array([1,2,3,4,5],10)

# Release 1
def fibonacci(number)
  # Create an Array
  # Fill array with Fibonacci sequence
  #   Push sum of array[i], array[i+1]
  fibonacci_sequence = []
  first = 0
  second = 1 
  fibonacci_sequence.push(first, second)
  #  for i in 2..number do
  #  fibonacci_sequence.push(first + second)
  i = 2
  while i < number do
    sum = first + second
    fibonacci_sequence.push(sum)
    temporary = second
    first = temporary
    second = sum 
    i += 1
  end 
  fibonacci_sequence
end

p fibonacci(6)
p fibonacci(100)[-1] == 218922995834555169026
