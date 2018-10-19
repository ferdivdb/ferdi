require 'nokogiri'
require 'open-uri'

def trader_obscur

  site_page = Nokogiri::HTML(open('https://coinmarketcap.com'))

  nameVar = 0
  site_page.css('.currency-name-container').each do |name|
  puts name.content + " : " + site_page.css(".price")[nameVar].content
  nameVar+=1
  end
end
trader_obscur()