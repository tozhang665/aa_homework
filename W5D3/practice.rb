# You are climbing a stair case. It takes n steps to reach to the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# Note: Given n will be a positive integer.

# Example 1:

def stairs(num)
    steps = [1, 2]
    arr = [Array.new(num,1)]



end


#function intakes a number
#output of possible ways to get to that number
# N!


# Input: 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps

# Example 2:


# Input: 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step


# Input: 4
# Output: 5
# 1 + 1 + 1 + 1
# 1 + 1 + 2
# 2 + 1 + 1
# 1 + 2 + 1
# 2 + 2


#input : 6
#output : 13
# 1 + 1 + 1 + 1 + 1 + 1
# 2 + 1 + 1 + 1 + 1
# 1 + 2 + 1 + 1 + 1 
# 1 + 1 + 2 + 1 + 1
# 1 + 1 + 1 + 2 + 1 
# 1 + 1 + 1 + 1 + 2
# 2 + 2 + 1 + 1 
# 2 + 1 + 2 + 1 
# 2 + 1 + 1 + 2 
# 1 + 2 + 2 + 1 
# 1 + 2 + 1 + 2 
# 1 + 1 + 2 + 2 
# 2 + 2 + 2


# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Example:


# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]

#create a new array for output
#iterate through the input
#if it is zero either keep count of it or seperate array
#if nonzero push into our new array
#after done iterating push all 0s to the end again


def my_function(arr)
    my_arr = []
    count= 0
    arr.each do |ele|
        if ele == 0
            count+=1
        else
            my_arr.push(ele)
        end
    end
    count.times do
        my_arr.push(0)
    end
    my_arr
end
