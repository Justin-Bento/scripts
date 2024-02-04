# Ruby script for Formula Forge to generate a sheet of 24 math problems for Grade 6 students

# Define the number of problems
number_of_problems = 24

# Define the range of whole numbers and fractions
whole_number_range = (1..10)
fraction_range = (1..5)

# Define the operators
operators = ['+', '-', '*', '/']

# Function to generate a random math problem
def generate_math_problem(operators, whole_number_range, fraction_range)
  operator = operators.sample
  if operator == '/'
    numerator = fraction_range.to_a.sample
    denominator = (fraction_range.to_a - [0, numerator]).sample
    fraction = Rational(numerator, denominator)
    return fraction
  else
    operand1 = whole_number_range.to_a.sample
    operand2 = whole_number_range.to_a.sample
    return "#{operand1} #{operator} #{operand2}"
  end
end

# Generate and print the math problems
puts "Grade 6 Math Problems:"
number_of_problems.times do |i|
  puts "#{i + 1}. #{generate_math_problem(operators, whole_number_range, fraction_range)}"
end
