# Author: Justin Bento
# Project: Stock Picker - Ruby Course
# Start Date: 2024-04-05
# End Date:
# Assignment Breakdown:
# ------------------------------------------------------------------------------
# [] Implement a method called "stock_picker."
# [] Create a variable that stores an array of stock prices.
# [] The method should return two values:
#     - The first pair for the best day to buy.
#     - The second pair for the best day to sell.
#     Keep in mind that the day starts with zero.
# [] Quick Tip:
#     You need to buy before you can sell.
#     Pay attention to edge cases like:
#     - The lowest day being the last day.
#     - The highest day being the first day.
#
# Pseudo Code:
# ------------------------------------------------------------------------------

def stock_picker(array)
  array.join(", ")
end

name = ["Hello", "World"]

puts stock_picker(name)
