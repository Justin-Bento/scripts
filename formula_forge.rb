# Justin Bento
# Start Date: 2024-01-21 | End Date: 2024-01-
# Develop a Ruby script within the Formula Forge application to generate a sheet of 24 math problems for Grade 6 students. The problems should include random operators (+, -, *, /) and involve whole numbers and fractions.
numbers = [ 0, 1, 2, 3, 4, 5, 6, 7, 8 ,9, 10, 11, 12 ]

class Operators
  def self.addition(val1, val2)
    val1 + val2
  end

  def self.subtraction(val1, val2)
    val1 - val2
  end

  def self.multiplication(val1, val2)
    val1 * val2
  end

  def self.division(val1, val2)
    val1 / val2 # Ensure division result includes decimal part
  end
end

result_addition = Operators.addition(5, 3)
puts "Addition: #{result_addition}"

result_subtraction = Operators.subtraction(8, 2)
puts "Subtraction: #{result_subtraction}"

result_multiplication = Operators.multiplication(4, 6)
puts "Multiplication: #{result_multiplication}"

result_division = Operators.division(10, 2)
puts "Division: #{result_division}"
