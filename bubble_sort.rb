def bubble_sort(array)
  last_left_elem = -2

  loop do
    break if array[last_left_elem].nil?

    # inner loop moves the largest num (and next ones) to the right part of the array
    array[0..last_left_elem].each.with_index do |num, index|
      if array[index] > array[index+1]
        # swap 'em
        array[index], array[index+1] = array[index+1], array[index]
      end

    end

    # move last_left_elem one position to the left
    last_left_elem -= 1
  end

  array
end

# sample usage
p bubble_sort([4, 3, 78, 2, 0, 2])
