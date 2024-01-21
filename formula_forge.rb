# Justin Bento
# Start Date: 2024-01-21 | End Date: 2024-01-
# Develop a Ruby script within the Formula Forge application to generate a sheet of 24 math problems for Grade 6 students. The problems should include random operators (+, -, *, /) and involve whole numbers and fractions.

def addition(val1, val2)
  return val1 + val2
end

def subtraction(val1, val2)
  return val1 - val2
end

def multiplication(val1, val2)
  return val1 * val2
end

def division(val1, val2)
  return val1 / val2
end

result_addition = addition(5, 3)
puts "Addition: #{result_addition}"

result_subtraction = subtraction(8, 2)
puts "Subtraction: #{result_subtraction}"

result_multiplication = multiplication(4, 6)
puts "Multiplication: #{result_multiplication}"

result_division = division(10, 2)
puts "Division: #{result_division}"
