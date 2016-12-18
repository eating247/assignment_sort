def bubble_sort(array)
    first = array[0]
    second = array[1]
  until array == array.sort
    if first > second
      first,second = second,first
    end

    if second = array.last
      first = array[0]
      second = array[1]
    else
      first = first.next
      second = second.next
    end
  end

end