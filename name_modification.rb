# User: Justin Bento
# Start Date to End Date: 2023-12-30 to 2024-12-02
# Purpose:
# The provided Ruby code is an interactive program that allows a user to input their name and select a casing option from a predefined list. After entering their name, the program prompts the user to choose a casing style, such as lowercase, UPPERCASE, camelCase, snake_case, or kebab-case. The selected casing style is then applied to the user's name, and the modified name is displayed as output.

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
    # Copy the modified name to the clipboard
    copy_to_clipboard(modified_name)
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

def copy_to_clipboard(text)
  IO.popen('pbcopy', 'w') {|f| f << text}
  text.str
  puts "Modified #{text} and copied it to the clipboard!"
end

# Call the selectCasing method to modify the casing of the user's name
selectCasing(greeting)
