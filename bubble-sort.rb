def bubble_sort(array)
  #for every element in the array, check if greater than element in right; if so, swap.
  #optimization1: in pass n, no need to check for n elements in the right; they are already sorted.
  #optimization2: if no element was swapped, the list is already sorted.


  max_index_to_check = array.length - 1   #optimization1
  
  while max_index_to_check>1 do
    swapped = 0                           #optimization2
    max_index_to_check.times do |number|
      current_el = array[number]
      next_el = array[number+1]
      if current_el > next_el
        array[number] = next_el
        array[number+1] = current_el
        swapped = 1
      end
    end
    if swapped == 0 then break end        #optimization2
    max_index_to_check -= 1               #optimization1
  end
p array
end

bubble_sort([4,3,78,2,0,2])