# swaps two numbers and triggers swapped flag
def swap(a,b)
  return true,b,a
end

# a bubble sort algorithm
def bubble_sort(arr)
  n = arr.length()-1
  n.times do
    swapped = false 
    #checks adjacent numbers and switches if out of order
    for i in (1..n)
      if arr[i-1] > arr[i]
        swapped,arr[i-1],arr[i] = swap(arr[i-1],arr[i])
      end
    end
    if swapped == false then break end #flag to exit loop when no switching occurs (sorted)
  end
  return arr
end



# main
p bubble_sort([4,3,78,2,0,2])
p bubble_sort([34, 7, 23, 32, 5, 62, 32, 45, 1, 87])