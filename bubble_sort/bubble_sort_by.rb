# see bubble_sort.rb for below's code explanation on the bubble_sort algorithm
# focus of exercise is the use of yield to allow a block to return a computation
def bubble_sort_by(array)
  last_left_elem = -2

  loop do
    break if array[last_left_elem].nil?

    array[0..last_left_elem].each.with_index do |element, index|
      result = yield(array[index], array[index+1])

      if result > 0
        array[index], array[index+1] = array[index+1], array[index]
      end
    end

    last_left_elem -= 1
  end

  array
end

# sample usage
my_array = ["hi", "hello", "hey"]
bubble_sort_by(my_array) do |left, right|
  left.length - right.length
end
p my_array
