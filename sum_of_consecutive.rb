# given x = [1,3,3,3,5,8,8,8]
#
# return [1,9,5,24]
#
# Sum the elements of the array when consecutive elements are the same

x = [1,3,3,3,5,8,8,8,9,10,10,2]

i = 0
j = 0

answer = []

count = x.length - 1

while i < count do
  j = i + 1
  base_element = x[i]
  running_sum = x[i]
  while j <= count do
      if base_element == x[j]
        running_sum += x[j]
        j += 1
      else
        answer.push(running_sum)
        i = j
        break
      end
  end
  if j > count
    answer.push(running_sum)
    break
  elsif j == count
    answer.push(x[j])
  end
end

puts "#{answer}"
