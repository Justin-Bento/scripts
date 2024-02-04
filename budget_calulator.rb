require 'uri'

def place_url
  print "Enter a url: "
  url = gets.chomp
  # Basic input validation using URI
  if URI.parse(url).is_a?(URI::HTTP) or URI.parse(url).is_a?(URI::HTTPS)
    puts "Your new URL looks like: #{url}"
  else
    puts "Invalid URL entered. Please enter a valid URL."
  end
  # shorten the link to have a max count of 60 characters.
  # if the is under do not parse the url.
end


place_url
