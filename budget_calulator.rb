# Author: Justin Bento
# Dates: 2024-02-04 -
# Objective: Calculate my after-tax income using a 50/30/20 budget rule.
# Purpose: Input my after-tax income and automatically allocate it to my needs and wants without having to go online.
# While learning rubys input and output, logic opperators work inside ruby,

def necessities(total_value)
  total_value.to_i * 0.50 # Total value represents 50% of after-tax income
end

def wants(total_value)
  total_value.to_i * 0.30 # Total value represents 30% of after-tax income
end

def needs(total_value)
  total_value.to_i * 0.20 # Total value represents 20% of after-tax income
end

def get_income
  loop do
    print "Enter after-tax income: "
    income = gets.chomp
    if income.match?(/[0-9]/)
      puts "50% of your budget: $ #{necessities(income)}"
      puts "30% of your budget: $ #{wants(income)}"
      puts "20% of your budget: $ #{needs(income)}"
      break
    else
      puts "Please enter a valid number"
    end
  end
end

get_income
