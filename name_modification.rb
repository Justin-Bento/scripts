# Function that changes user input based on the case setting.
def greeting
  print "Enter some text: "
  name = gets.chomp
  puts "Hello, #{name}!"
  return name
end

# Function to select a casing option
def selectCasing(name)
  casings = ["lowercase", "UPPERCASE", "camelCase", "snake_case", "kebab-case"]

  puts "Select a casing option:"
  casings.each_with_index { |casing, index| puts "#{index + 1}. #{casing}" }

  print "Enter the number of your choice: "
  choice_index = gets.chomp.to_i - 1

  if choice_index.between?(0, casings.length - 1)
    selected_casing = casings[choice_index]
    puts "You selected: #{selected_casing}"

    # Apply the selected casing to the user's name
    modified_name = modifyCasing(name, selected_casing)
    puts "Modified name: #{modified_name}"
  else
    puts "Invalid choice. Please enter a valid number."
  end
end

# Function to modify the casing of the user's name based on the selected option
def modifyCasing(name, selected_casing)
  case selected_casing
  when "lowercase"
    return name.downcase
  when "UPPERCASE"
    return name.upcase
  when "camelCase"
    return name.split.map(&:capitalize).join
  when "snake_case"
    return name.downcase.gsub(' ', '_')
  when "kebab-case"
    return name.downcase.gsub(' ', '-')
  else
    return name
  end
end

# Call the selectCasing method to modify the casing of the user's name
selectCasing(greeting)
