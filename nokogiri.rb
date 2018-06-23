require 'nokogiri'
require 'open-uri'

# open that website and store its html to the variable 'doc'
doc = Nokogiri::HTML(open('https://www.zitate.eu/'))

puts doc
