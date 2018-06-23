require 'yahoo_weatherman'

puts "Where are you? Type in your city, state or zip-code!"

location = gets

client = Weatherman::Client.new

client.lookup_by_location('66061').condition['temp']
client.lookup_by_location('olathe, ks').condition['temp']
client.lookup_by_location('north pole').condition['temp']
client.lookup_by_location('sydney opera house').condition['temp']


weather = "cloudy"

case weather
when "rainy"
  puts "Take an umbrella!"
when "sunny"
  puts "Wear sun glasses!"
when "foggy"
  puts "Drive carefully."
else
  puts "Hmm strange weather. Best stay home and code some fantastic app!"
end
