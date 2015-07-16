#Pass by reference vs value
#Create a method that takes an array as a parameter. Within that method,
#try calling methods that do not mutate the caller. How does that affect the array outside of the method?
#What about when you call a method that mutates the caller within the method?

def my_method(arr)
  arr.uniq
end

my_arr = [1,2,3,3,4,4,5]

my_method(my_arr)

puts my_arr #this is not changed


def my_another_method(arr)
  arr.uniq!
end

my_another_method(my_arr)

puts my_arr #this is changed
