require 'rubygems'
require 'nokogiri'
require 'open-uri'

$page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
$all = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
$mail = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))


mairie = Array.new
email = Array.new

def mairie_avernes (mairie)
$page.xpath("//a[@class='lientxt']").each do |node|

      mairie << node.text
    end
     return mairie
end

mairie_avernes (mairie)
p mairie[12]

#################################################################################################################################
def get_townhall_email (email)
 $mail.xpath("//*[@class='txt-primary tr-last']").each do |node|

     email << node.text
   end
   return email
end
get_townhall_email (email)
p email[3].split.join(' ')

#############################################################################################################

def all_mairies_Val (mairie)

$all.xpath("//a[@class='lientxt']").each do |node|
      mairie << node.text
    end
    return mairie
end
#p all_mairies_Val (mairie)





# keys = ["a", "b", "c"]
# values = [1, 2, 3]
#zipped = keys.zip(values)
# puts Hash[zipped]
# puts Hash[*keys.zip(values).flatten]
