def search_array(array, number)
  position = nil
  array.length.times do |index|
    # Check array[index] == number
    position = index if array[index] == number
  end
  return position
end

p search_array([1,2,3,4,5],10)
