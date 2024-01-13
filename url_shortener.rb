require 'uri'

def place_url
  print "Enter a url: "
  url = gets.chomp
  print "Your revised URL appears as: \n#{url}"

  # Basic input validation using URI
  if URI.parse(url).is_a?(URI::HTTP) or URI.parse(url).is_a?(URI::HTTPS)
    puts "Your new URL looks like: #{url}"
  else
    puts "Invalid URL entered. Please enter a valid URL."
  end
end


place_url
