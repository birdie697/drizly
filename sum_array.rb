# Given [1,2,[4,5],6,[[1],2]]
# Return 21
#
# Given an array of integers or nested array of integers, return the Sum

x = [1,2,[4,5],6,[[1],2],5]

def sum_array (nums)
  sum = 0
  i = 0
  count = nums.length

  while i < count do
    if nums[i].is_a?(Integer)
      sum += nums[i]
    else
      sum += sum_array(nums[i])
    end
    i += 1
  end
  return sum
end

puts "#{sum_array(x)}"
