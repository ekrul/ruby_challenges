# require the nokogiri gem and its dependencies
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

list = doc.css('.components-item')

list.each do |i|
    puts i.inner_html
end
