# Code along with the code mostly given in the problem statement

require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")


doc = Nokogiri::HTML(html)
str = doc.css(".headline-26OIBN").text
puts str
puts str[str.size-1]

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")
courses.each{|et| puts et.text.strip}

puts
puts
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]

puts
puts
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name

puts
puts
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes
