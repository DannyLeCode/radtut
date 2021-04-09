#1a
assignment = 10
exam = 10

sum = assignment +
      exam

puts sum

#1b
#Syntax not allowed (Need to put operator at the end of the statement)
# tax = income – threshold 
#       * tax_rate

#1c
#Syntax also incorrect 
# a = 4
# b = 6
# average = a + b \
# 2
# puts average

#2
$tax_rate = 0.1

class Car
    attr_reader :name
    #attr_accessor :price
    @price
    
    def initialize(name, price)
      @name = name
      @price = price
    end
    
    def price
      @price*(1+$tax_rate)
    end
    
    def to_s
      "Car model: #{@name}, price: #{@price}"
    end
end    

#2a
car1 = Car.new("Nissan", 15000)
car2 = Car.new("BMW", 45000 )
puts car1             #print=>Car model: Nissan, price: 16500
puts car2             #print=>Car model: BMW, price: 49500
#car1.price = 60000;
puts car1             #print=>Car model: Nissan, price: 60000
puts car1.price 