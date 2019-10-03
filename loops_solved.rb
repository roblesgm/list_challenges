# #1 = I dont need to see everything in the list
# ##      list[x], no loops

# def median(list)
    
#     if list.size % 2 == 1
#     # odd length lists
#     return list[list.size / 2]
#     else
#     # even length lists
#     return (list[list.size] / 2] + list[list.size / 2 - 1]) / 2.0
# end

# # # #           0   1   2       3 / 2 ==> 1
# # # puts median([1, 2, 3])#2

# # # #           0   1   2   3   4 / 2 ==> 2
# # # puts median([1, 2, 3, 4])

def starts_with?(list, number)

    if list[0] == number
        return true
    else
        return false
    end
end

# # # puts starts_with?([1, 2, 3], 1) # true

# # #2 - potentially, I need to see everything in the list one at a time
# # ## -> one loop, or seperate loops

# def avg(list)
#     total = 0
#     list.each do |n|
#         total = total + n
#     end
#     return total / list.size.to_f
# end

# # # # puts avg([1, 2, 3])# 2

# def count(list, number)
#     c = 0
#     list.each do |n|
#         if n == number
#             c = c + n
#         end
#     end
#     return c 
# end

# # # puts counts([1, 1, 1], 1) #3
# # # puts counts([1, 1, 1], 2) #0

def std_dev(list)
    total = 0
    list.each do |n|
        total = total + n
    end

    avg = total / list.side.to_f

    sum_squares = 0
    list.each do |n|
        sum_squares += (n - avg) * (n - avg)
    end

    return Math.sqrt(sum_squares / (list.size - 1))
end

# # puts std_dev(1, 2, 3) # number?

# #3 - Have to compare each thing in a list to most other things
# ##      nested loops (loops in loops) loopception

# mode with an unsorted list
def mode(list)
    max_count = 0
    mode = list[0]

    list.each do |a| # looking for a mode, number by number

        count = 0
        list.each do |b| # count how many a's there are
            if b == a 
                count += 1
            end
        end

        if count > max_count
            max_count = count
            mode = a
        end

    end

    return mode

end

# # puts mode([2, 3, 1, 2, 2, 3, 2]) # 2

def is_increasing(list)

    (list.size - 1).times do |i|
        if list[i] >= list[i..(i+list)]
            return false
        end
    end
    return true

end

# # puts is_increasing([1, 2, 3]) # true
# # puts is_increasing([3, 2, 1]) # false
# # puts is_increasing([1, 2, 2, 3]) # false

def num_cats(str)

    (str.size - 2).times do |i|
        slice = str[i, i + 3]
        puts slice
    end

end

# # puts num_cats("catdogcatdogcat") # 3

def threed(ints)
    count = 0

    ints.each do |i|
        if i == 3
            count += 1
        end
    end

    (ints.size - 1).times do |n|
        if ints[n] == 3 && ints[n + 1] == 3
            return false
        end
    end

    if count == 3
        return true
    end
end

# puts threed([2, 4, 3, 3]) #false

def same_first_last(ints)
    length = ints.size

    if length >= 1 && ints[0] == ints[length - 1]
        return true
    end

    return false
end

# puts same_first_last([1, 2, 5, 7, 3, 4, 1]) # true
# puts same_first_last([1, 4, 9, 2, 5, 7, 2]) # false

def get_sandwich(strg)
    count = 0
    x = 0
    y = 0

    (strg.size - 4).times do |i|
        if strg[i..(i + 4)] == "bread" || strg[i..(i + 4)] == "Bread"
            if count == 0
                x = i + 5
                count += 1
            elsif count > 0
                y = i + 1
            end
        end
    end
    if count < 2
        # return ""
    end
        return strg[x..y-2]
end

# puts get_sandwich("Breadapplejambread")# applejam
# puts get_sandwich("peanutbreadhoney") #

# def shift_left(list)
#     overflow = 0
#     point = 0

#     list.size.times do |

# end

# puts shift_left([1, 5, 3, 4])

def can_balance(list)
    if list.size > 0
        if list.size%2 == 0
            x = (list.size / 2)  
        else
            return false
        end
    else 
        return false
    end

    sum_front = 0
    sum_back = 0
    i = 0
    
    list.each do
        if i < x
            sum_front = sum_front + list[i]
        elsif i >= x
            sum_back = sum_back + list[i]
        end
        i = i + 1
    end

    if sum_front == sum_back
        return true
    else 
        return false
    end
end

# puts can_balance([1, 4, 3, 6, 1, 1]) # true
# puts can_balance([]) # false

def either_2_4(list)
    count = 0
    index = 0

    list.each do |i|
        if i == 2 && i == list[index + 1] || i == 4 && i == list[index + 1]
            count += 1
        end
        index = index + 1
    end

    if count == 1
        return true
    end
    
    return false
end

# puts either_2_4([1, 3, 4, 4, 7]) #true
# puts either_2_4([2, 4, 2, 2, 4]) #true

def list_1(list)
    if list.size % 2 == 1
        return list[list.size/2]
    else
        (list[list.size/2] + list[list.size / 2 - 1]) / 2.0
    end 
end

def list_2(list)
    if list.size % 2 == 1
        return list[list.size/2]
    else 
        (list[list.size/2] + list[list.size / 2 - 1]) / 2.0
    end 
end 

def mid_way(list1,list2)
    puts list_1(list1)
    puts list_2(list2)
end 

# puts mid_way([1,2,3], [4,5,6]) #2,5

a = [3, 4, 6, 10, 11, 15]
b = [1, 5, 8, 12, 14, 19]
def merge_arrays(a, b)
  result = []
    if a[0] < b[0]
    result << a.shift
    else
    result << b.shift
    end

    if a.length == 0
        return result + b
    elsif b.length == 0
        return result + a
    else
       return result + merge_arrays(a, b)
    end
      
end

# puts merge_arrays(a, b)
