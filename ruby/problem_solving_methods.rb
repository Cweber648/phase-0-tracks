# Release 0
def search_array(array, number)
  position = nil
  array.length.times do |index|
    # Check array[index] == number
    position = index if array[index] == number
  end
  position
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

# p fibonacci(6)
# p fibonacci(100)[-1] == 218922995834555169026

# Release 2
# Insertion Sort
def insertion_sort(array)
  # Loop through the array
  for i in 0..array.length-2
    # Compare current element and next element
    #   if current element is bigger than the next element
    if array[i] > array[i+1]
      # Loop through the array backward from the index of the next element
      j = i + 1
      while j > 0
        # if the current element is less than previous element
        if array[j] < array[j-1]
          # Swap positions of current element and previous element
          vi = array[j]
          vf = array[j-1]
          array[j] = vf
          array[j-1] = vi
        end
        j -= 1
      end
    end
  end
  # return sorted array
  array
end

# p insertion_sort([1,25,3,7,9,8,12])

