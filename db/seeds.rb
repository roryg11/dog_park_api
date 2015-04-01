require 'rest-client'
require 'nokogiri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# page = RestClient.get "http://www.bringfido.com/attraction/parks/"
# page_object = Nokogiri::HTML(page)
#
# city_links = []
# page_object.css('.top_links').children.css('a').map do |link|
#   city_links.push((link.attr('href')))
# end
#
# park_links = []
#
# city_links.each do |city_link|
#   park_page = RestClient.get "http://www.bringfido.com#{city_link}"
#   park_page_html = Nokogiri::HTML(park_page)
#   park_page_html.css(".object_snapshot").css('.info').css('h1').css('a').each do |link|
#     park_links.push(link.attr('href'))
#   end
# end
#
# park_links = park_links.select {|p| p=~ /attraction/ }
#  counter = 0
# p park_links[13]
# park_links[0..2].each do |link|
#   first_page = RestClient.get "http://www.bringfido.com#{link}"
#   first_page_html = Nokogiri::HTML(first_page)
#   p name = first_page_html.css('.title').css('.anchor')[0].text
#   p address = (first_page_html.css('.address').text).strip.split("\r\n\t\t\t\r\n\t\t\t").join(", ")
#   if first_page_html.css('.review_header').css('img') == nil
#     p rating = first_page_html.css('.review_header').css('img').attr('src').text[-10].to_i
#   else
#     p rating = nil
#   end
#   p description = first_page_html.css('.detail_container').css('.body')[0].text.strip.split("\r\n\t\t\t\r\n\t\t\t").join(" ").split("\r\n\r\n\t\t\t").join("").split("\r\n\t\t\t\t")[0..-5].join
    # DogPark.create(
    #   name: name,
    #   address: address,
    #   review_average: rating,
    #   description: description,
    # )
#   counter = counter + 1
#   p "park #{counter}"
# end
