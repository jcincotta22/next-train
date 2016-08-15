# YOUR CODE HERE
train_times = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]

puts "Hello, welcome to The Next Train app!"
puts "What time would you like to return home?"
leaving = gets.chomp.to_f
#another way to write this code.  Make sure change index(t) to index(t.first)
# t = train_times.select do |x|
#    leaving <= x
#  end
# comment to be seen on git
t = nil
train_times.each do |x|
    if leaving <= x
      t = x
      break
    end
end
train_index = train_times.index(t)

if train_index == 12
  puts "You should catch Train #{train_index + 1} leaving at #{train_times[train_index]}"
  puts
  puts "***DON'T STOP...BELIEVIN'!***\n"
  puts "\n"
  puts "Just a small town girl\nLiving in a lonely world\nShe took the midnight train going anywhere\nJust a city boy\nBorn and raised in South Detroit\nHe took the midnight train going anywhere\n"
  puts "\n"
  puts "A singer in a smoky room\nA smell of wine and cheap perfume\nFor a smile they can share the night\nIt goes on and on and on and on\n"
  puts "\n"
  puts "Strangers waiting, up and down the boulevard\nTheir shadows searching in the night\nStreetlights people, living just to find emotion\nHiding, somewhere in the night.\n"
else
  puts "You should catch Train #{train_index + 1} leaving at #{train_times[train_index]}"
end
