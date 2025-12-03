array = [10,31,3,94,87,42,15,55,46,47,92]

def bubbleSort(array)
  #check if it is sorted loop
  array.each_with_index do |element, index|
    #swap loop
    if(index < array.length - 1)
      array.each_with_index do |element, index|
        if(index < array.length - 1)
          if(element > array[index + 1])
            temp = array[index]
            array[index] = array[index + 1]
            array[index + 1] = temp
          end
        end
      end
    end
  end
  puts array
end

bubbleSort(array)