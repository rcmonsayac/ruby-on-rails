def sum_count(arr)
    if arr == nil || arr.count == 0
        return []
    else
        count_arr = [0,0]
        arr.each do |ele|
            ele > 0 ? count_arr[0] = count_arr[0]  + 1 : count_arr[1] += ele
        end
        return count_arr
    end

end

arr = [1, 2, 3, 4, 5, 6, 7, 8 ,9, 10, -11, -12, -13, -14 , -15]

puts sum_count(arr)
puts sum_count([])
puts sum_count(nil)

