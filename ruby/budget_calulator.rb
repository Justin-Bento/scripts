# Author: Justin Bento
# Dates: 2024-02-04 -
# Objective: Calculate my after-tax income using a 50/30/20 budget rule.
# Purpose: Input my after-tax income and automatically allocate it to my needs and wants without having to go online.
# While learning rubys input and output, logic opperators work inside ruby,

def necessities(total_value)
  total_value.to_f * 0.50  # Determine 50% of the total income after taxes.
end

def wants(total_value)
  total_value.to_f * 0.30 # Determine 30% of the total income after taxes.
end

def needs(total_value)
  total_value.to_f * 0.20 # Determine 20% of the total income after taxes.
end

# Define the method to get income
def get_income
  loop do
    print "Enter after-tax income: "
    income = gets.chomp
    if income.match?(/[0-9]/)
      # Output the budget breakdown based on income
      puts "50% of your budget: $ #{necessities(income)}"
      puts "30% of your budget: $ #{wants(income)}"
      puts "20% of your budget: $ #{needs(income)}"
      break # Exit the loop
    else
      puts "Please enter a valid number" # Prompt for a valid number if input is not a number
    end
  end
end


get_income
