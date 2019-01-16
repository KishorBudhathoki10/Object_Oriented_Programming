def digit_list(num)
  if num >= 0
    num = num.to_s
    arr = num.split(//)
  end

  car = []

  arr.each do |n|
    car << n.to_i
  end

  p car
 

end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             