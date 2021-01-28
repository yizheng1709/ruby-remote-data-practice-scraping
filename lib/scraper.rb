require 'nokogiri'
require 'open-uri'

html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)

doc.css(".tout__label.heading.heading--level-4") 

courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end 

p doc.css(".tout__label.heading.heading--level-4")[0].attributes 