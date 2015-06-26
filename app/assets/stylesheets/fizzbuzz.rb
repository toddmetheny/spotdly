arr=[]
100.times do |num|
arr << num + 1
if arr[num] % 15 == 0
p "FizzBuzz"
elsif arr[num] % 3 == 0
p "Fizz"
elsif arr[num] % 5 == 0
p "Buzz"
else
p arr[num]
end
end
