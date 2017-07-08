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
def fib(number)
  #need an empty array to put numbers into
  array = []
  #for the numbers leading up to the given number
  for i in 0..number-1
    if i == 0
      array.push(0)
    elsif i == 1
      array.push(1)
    else
      array.push(array[i-2] + array[i-1])
    end
  end
  array
end

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

