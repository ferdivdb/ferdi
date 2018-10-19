require 'open-uri'
require 'nokogiri'

def get_the_email_of_a_townhal_from_its_webpage(urls)
    urls.map do |x|
    page = Nokogiri::HTML(open(x)).css('tbody tr.tr-last td')[7].text
  end
end

def get_all_the_urls_of_val_doise_townhalls
    page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
    page.css('a.lientxt').map{|x| x['href'].delete_prefix(".")}.map{|path| "http://annuaire-des-mairies.com" + path}
end

email_list = get_the_email_of_a_townhal_from_its_webpage(get_all_the_urls_of_val_doise_townhalls)

puts email_list