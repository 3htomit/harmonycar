require "open-uri"
require "nokogiri"
require "csv"


class GaragesController < ApplicationController

  def index
    @garages = Garage.all
    # @garages = []

    # # instancie la recherche utilisateur
    # city_search = "Nantes-44000.html"
    # url = "https://www.allogarage.fr/garages-par-ville/liste-garage-#{city_search}"

    # html_file = URI.open(url).read
    # html_doc = Nokogiri::HTML(html_file)

    # xpath_address                 = "span[@class='legende_avis']/following-sibling::br/following-sibling::text()"
    # xpath_address_when_no_reviews = "h2[@class='titre_fiche_garage']/following-sibling::br/following-sibling::text()"

    # html_doc.search(".fiche_garage").each do |element|
    #   @phone_number = []

    #   @garages_name = element.css(".titre_fiche_garage").css('a').text
    #   @garages_mail = element.css('.titre_fiche_garage').css('a').attribute("href").value

    #   html_file_mail = URI.open("https://www.allogarage.fr/#{@garages_mail}").read
    #   html_doc_mail = Nokogiri::HTML(html_file_mail)


    #   html_doc_mail.search('.icon-phone').each do |phone|
    #     @phone_number << phone.xpath("following-sibling::text()").text.strip.split(",")
    #   end
    #   @phone = @phone_number[0].uniq[0]

    #   begin
    #     @address = element.xpath(xpath_address)[0].text.strip
    #   rescue => e
    #     @address = element.xpath(xpath_address_when_no_reviews)[0].text.strip
    #   end

    #   @garages << { name: @garages_name, mail: @garages_mail, address: @address, phone: @phone}
    # end


    # filepath = "storage/garages.csv"

    # CSV.open(filepath, "wb") do |csv|
    #   csv << ["name", "mail", "address", "phone"]
    #   @garages.each do |garage|
    #     csv << [garage[:name], "https://www.allogarage.fr/#{garage[:mail]}", garage[:address], garage[:phone]]
    #   end
    # end
    # self.transfer_to_db
  end

  def transfer_to_db
    # filepath = "storage/garages.csv"

    # CSV.foreach(filepath, headers: :first_row) do |row|
    #   puts "#{row['name']} #{row['mail']} #{row['address']}  #{row['phone']}"
    #   garage = Garage.new(name: row['name'], address: row['address'], telephone: row['phone'], web_address: row['mail'])
    #   garage.save
    # end
  end

end
