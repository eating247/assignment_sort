def merge_sort(array)
  return array if array.length <= 1 

  split = array.length / 2
  left = array[0..split-1]
  right = array[split..-1]

  left_merge = merge_sort(left)
  right_merge = merge_sort(right)

  merge(left_merge, right_merge)

end

def merge(left_merge, right_merge)
  sorted = []
  until left_merge.empty? && right_merge.empty?
    if left_merge.empty?
      sorted += right_merge
      right_merge = []
    elsif right_merge.empty?
      sorted += left_merge
      left_merge = []
    elsif left_merge[0] <= right_merge[0]
      sorted << left_merge.shift
    elsif right_merge[0] < left_merge[0]
      sorted << right_merge.shift
    end
  end
  sorted
end