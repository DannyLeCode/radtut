# def method_1(array)
#   array.each {|i| yield i}
# end
# method_1([2,3,4,5]) {|i| puts i * 2}

#1a
def pass_block(parameter, &code)                          
  code.call(parameter)
end

array = [2,3,4,5]

# pass_block (array) { |i| puts "The parameter is #{i}"} 

pass_block (array) { |i| puts i * 2 }

#1b
#1c

#2a
#2b

#3

#4a
#4b

#5a
#5b
#5c
#5d
#5e
#5f
#5g

