require 'pry'

def bubble_sort(array)
  last = array.length - 2
  
  array.length.times do
    (0..last).each do |index|
      first = array[index]
      second = array[index+1] 
      if first > second 
        array[index], array[index+1] = second, first
      end
    end
  end
  array
end