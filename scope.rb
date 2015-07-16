#scope.rb

a = 5 #variable is initialized outside of the block

3.times do |n|
  a = 3 #is a accessible here in inner scope?
end

puts a #yes

a = 5 #a is initialized in the outer scope

3.times do |n|
  a = 3
  b = 5  #b os initialized in inner scope
end

puts a
#puts b #is be accessible here? in outer scope? #NO!

#Another Example, with a method

a = 5

def some_method
  a=3
end

puts a

#Note: the key distinguishing factor for deciding whether code delimited by {} or do/end is considered a block (and thereby creating a new scope for variables), is seeing if the {} or do/end immediately follows a method invocation. For example

arr = [1,2,3]

for i in arr do
  a = 5 #a is initialized here
end

puts a #is it accessible here? #YES!!
