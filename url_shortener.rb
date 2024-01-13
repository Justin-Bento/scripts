def place_url
  print "Enter a url: "
  url = gets.chomp
  print "Your revised URL appears as: \n#{url}"
end


puts place_url()
