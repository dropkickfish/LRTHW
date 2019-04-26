def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"

age = add(20, 8)
height = subtract(10, 2)
weight = multiply(20, 20)
iq = divide(12, 3)

puts "Age: #{age}, Height #{height}, Weight #{weight}, IQ #{iq}"

#extra credit puzzle
puts "here is a puzzle"

#what = -764???
what =add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "that becomes #{what}"
