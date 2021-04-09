
#1 (Only nil and false are not considered true)
a = 0;      puts "TRUEa" if a           
b = 0.0;    puts "TRUEb" if b           
c = 100;    puts "TRUEc" if c           
d = "0";    puts "TRUEd" if d           
e = "";     puts "TRUEe" if e  
f = " ";    puts "TRUEf" if f          
g = "TEXT"; puts "TRUEg" if g          
h = nil;    puts "TRUEh" if h           
j = false;  puts "TRUEi" if j

#2a
x = 20
if !(x < 10)
  puts x**2
end

#2b
a = 20
b = 30
if (a >= 0 and b >= 0)
  puts a+b
end

#2c
def methods1
  puts "m1"
end  

def methods1
  puts "m2"
end  

first = 6
if first > 5
  methods1
else
  methods2
end 

#2d
def myFile()
  ""
end

if myFile().empty?
  puts "File reading error"
end

#3a
puts "3a"
sum = 0
for i in 0..10
  puts "sum is #{sum += i}"
end

#3b
puts "3b"
sum = 0
(0..10).each do |i|
  puts "sum is #{sum += i}"
end

#3c
puts "3c"
sum = 0
0.step(10,1) { |i| puts "sum is #{sum += i}" }

#3d
puts "3d"
sum = 0
10.times do |i|
  puts "sum is #{sum += i}"
end

#3e
puts "3e"
sum = 0
10.times {|i| puts "sum is #{sum += i}"}

#4
(10..20).each do |i|
  puts i
end

10.step(20,2) do |i|
  puts i
end

#5
input = 5
case 
when input % 3 == 0
  puts input
else
  puts "Remainder is #{input % 3}"
end


#6

class Student
  attr_reader :name, :age
  attr_accessor :score
  
  def initialize(name, age, score)
    @name = name
    @age = age
    @score = score
  end
  
  def -(other)
    score - other.score
  end
  
  def mark
    case
    when @score > 85
      "HD"
    when @score > 70
      "DI"  
     end
  end  
  
end  
  
  

stds =[Student.new("Alex", 21, 95.5),
Student.new("Mary", 20, 87),
Student.new("Dirk", 22, 75)]

puts stds[0].name + " has a higher score" if stds[0].score >stds[1].score
puts stds[2].mark #should print DI
puts stds[0] - stds[1]# should print8.5, that is 95.5 -87

stds.each do |i|
  i.score *=1.1 # increase everyone's score by 10%
  puts"#{i.name}'s new scoree is #{i.score}"
end
