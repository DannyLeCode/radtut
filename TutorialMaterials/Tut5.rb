# def method_1(array)
#   array.each {|i| yield i}
# end
# method_1([2,3,4,5]) {|i| puts i * 2}

# def pass_block(parameter, &code)                          
#   code.call(parameter)
# end

# array = [2,3,4,5]

# pass_block (array) { |i| puts i * 2 }


#1a
def my_method(array)
  array.each do |element|
    yield element
  end  
end

def my_method(array, &block)
  array.each do |element|
    block.call(element)
  end  
end

array = [2,3,4,5]
puts "1a"
my_method(array) do |element|
  puts element * 2
end  

#1b
puts "1b"
sum = 0
my_method(array) do |element|
  sum += element
end  
puts sum
#1c
puts "1c"
my_method(array) do |element|
  puts element if element > 3
end  

#2a
hash = {Alex:90, Bill:70,Casey:89} 

puts "2a"
hash.each do |key, value|
  puts value if value < 90
end

#2b
puts "2a"
hash.each do |key, value|
  puts value if value.to_s[-1] == "9"
end

#3

puts "3"
enumerator = {Alex:90, Bill:70,Casey:89}.each

puts enumerator.next
puts enumerator.next
puts enumerator.next

class MyEnumertor
  include Enumerable
  
  def next
    10
  end
  
  def each
    loop do
      yield self.next
    end
  end
end

enum = MyEnumertor.new

enum.take(5)


#4a
puts "4a"
def my_if(predicate, if_true)
  if_true.call if predicate.call
end

x = nil 
x_is_greater_than_10 = -> {x > 10}
print_greater_than_10 = -> {puts "Greater than 10"}

x = 5 
my_if(x_is_greater_than_10, print_greater_than_10)

x = 15 
my_if(x_is_greater_than_10, print_greater_than_10)

#4b
puts "4b"
array = [2,6,7]
any_element_less_than5 = -> {array.any? {|x| x < 5} }
times2 = -> {array.map! { |element| element or element*2 if element < 5 }}
my_if(any_element_less_than5, times2)
puts array

#5a
str ="Ruby"
puts str.match?("^Ruby$")
#5b
str ="ruby"
puts str.match?("^Ruby$", "i")
#5c
str ="Rubywdadada"

#5d
str ="Ruby123"

#5e
str ="/Ruby/"

#5f
str ="/Ruby/Rubymine/Cloud9"

#5g
str ="rubyawdRuby12"
