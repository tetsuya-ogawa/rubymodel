require 'open-uri'
require 'nokogiri'

url = 'https://careerpark.jp/'

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML::parse(html, nil, charset)

puts doc.title
