require 'open-uri'
require 'nokogiri'

def mail_finder(url, tbody)
    doc = Nokogiri::HTML(open(url))
    doc.xpath(tbody).each do |node|
    	node.text.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i) { |node| puts node } 
  	end
 end

mail_finder("http://annuaire-des-mairies.com/95/vaureal.html",'//tbody[1]/tr[4]/td[2]')
