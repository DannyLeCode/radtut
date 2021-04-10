#1a
if !defined?(var)
    var = 0
end

puts var
#1b
var = -1
if var < 0
    var = 100
end
puts var

var = -1
var < 0 and var = 100
puts var
#1c
var1 = 1;
var2 = 2;
if var1 != var2 
    puts "Not Equal"
end
var1 = 1;
var2 = 2;
var1 != var2 and puts "Not Equal"
#1d
def myMethod1()
  puts "Mehtod1"
end

def myMethod2()
  
end

if myMethod2().nil?
    puts myMethod1()
end
#2a
myArray = [3, 3, "John", "Ruby", 20.5]
#2b
myArray2 = [myArray[1], myArray.last]
puts myArray2
puts "myArray2"
#2c
myArray3 = myArray.uniq
#myArray.uniq!
#Equals
#myArray = myArray.uniq
puts myArray3
puts "myArray3"
#2d
myArray.each { |item|
    puts item + item
}
#3a
myHash = { "Bill" => 18, "Mary" => 22, "Max" =>  25 }
#3b
myHash.each { |key, value|
    puts "The age of #{key} is #{value}"
}
#3c
if myHash.has_key?("Mary")
    puts "Found the person"
end
#3d
name = "Bill"
myHash.key?(name) and puts "Found " + name
name = "Bob"
myHash.key?(name) and puts "Found " + name
#4a
def myMethod1(var1,var2)
    puts (var1+var2)/2.0
end
puts "Method1"
myMethod1(12,6)
#4b
def myMethod2(*params)
    puts params.length()
end
puts "Method2"
myMethod2(12,6,6,7,8)
#4c
def myMethod3(*params)
    puts params.min(), params.max()
    puts params.minmax
end
puts "Method3"
myMethod3(12,6,6,7,8,4)
#4d
def myMethod4(param1,param2)
    if param2.zero?
      puts nil
    else    
      puts param1 / param2
    end
end
puts "Method4"
myMethod4(4,0)
myMethod4(4,2)

#5
puts "Q5"
array = [1, 2, 3, 4, 5, 6, 7, 8]
array.each {|num| num % 2 == 1 and puts num}
#6
puts "Q6"
def price(cost, tax = 0.1, discount = 0)
    cost + cost * tax - discount
end  

puts price(100)
puts price(100,0.2)
puts price(100,0.2,10)
#7
def average(*args)
  args.filter! {|x| x.is_a?(Numeric)}
  args.sum / args.size.to_f
end
puts "Q7"
puts average(1,2,3)
puts average(1,"a",1, 4)
puts average(1,"a",1, 2.5, "test", 0, 0.0)

#8
