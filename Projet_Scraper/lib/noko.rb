require 'rubygems'
require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

coin = Array.new
price = Array.new
coin_hash = Hash.new

#page.xpath('//a[@class = "currency-name-container link-secondary"]').each do |node|
 #coin << node.text
#end

#page.xpath('//a[@class = "price"]').each do |node|
 #price << node.text
#end
#coin_hash = Hash[coin.zip(price)]

#puts coin_hash

$page = Nokogiri::HTML(open("https://coinmarketcap.com/coins/views/all/"))

 def retrieve_symbols (coin )

$page.xpath("//a[@class='currency-name-container link-secondary']").each do |crypto_symbol|
       coin << crypto_symbol.text
     end
     return coin
end

#p retrieve_symbols (coin)

  def retrieve_pricies (price )
   $page.xpath("//a[@class='price']").each do |pricies|
       price << pricies.text
     end
     return price
  end
#p retrieve_pricies (price)



tab1 = Array.new

tab2 = Array.new

def zip_tap(tab1, tab2)

    return hash = Hash[tab1.zip(tab2)]
end
#p zip_tap(retrieve_symbols(coin), retrieve_pricies(price))
#p coin.count
#p price.count
#p zip_tap(retrieve_symbols(coin), retrieve_pricies(price)).count


# keys = ["a", "b", "c"]
# values = [1, 2, 3]#
#zipped = keys.zip(values)# puts Hash[zipped]
# puts Hash[*keys.zip(values).flatten]
