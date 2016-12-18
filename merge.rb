def merge_sort(array)
  array.slice(2)
end

def bubble_sort(array)
  last = array.index(array[-2])
  
  1000.times do
    (0..array.length).each do |index|
      first = array[index]
      second = array[index+1]
      if first > second
        array[index], array[index+1] = second, first
      end
    end
  end
  array
end

def bubble_sort(array)
  array.length.times do
    array.each_index do |index|
      first = array[index]
      second = array[index+1]
      if first > second
        array[index], array[index+1] = second, first
      end
      end
    end
  end
  array
end