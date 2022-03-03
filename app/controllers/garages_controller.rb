class GaragesController < ApplicationController

  def index
    require "open-uri"
    require "nokogiri"

    @garages = []

    ingredient = "Nantes-44000.html"
    url = "https://www.allogarage.fr/garages-par-ville/liste-garage-#{ingredient}"

    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)

    xpath_address                 = "span[@class='legende_avis']/following-sibling::br/following-sibling::text()"
    xpath_address_when_no_reviews = "h2[@class='titre_fiche_garage']/following-sibling::br/following-sibling::text()"

    html_doc.search(".fiche_garage").each do |element|
      @garages_name = element.css(".titre_fiche_garage").css('a').text
      @garages_mail = element.css('.titre_fiche_garage').css('a').attribute("href").value

      html_file_mail = URI.open("https://www.allogarage.fr/#{@garages_mail}").read
      html_doc_mail = Nokogiri::HTML(html_file_mail)

      @phone_number = []
      html_doc_mail.search('.icon-phone').each do |phone|
        @phone_number << phone.xpath("following-sibling::text()").text.strip.split(",")
      end
      @phone = @phone_number[0].uniq[0]

      begin
        @address = element.xpath(xpath_address)[0].text.strip
      rescue => e
        @address = element.xpath(xpath_address_when_no_reviews)[0].text.strip
      end

      @garages << { name: @garages_name, mail: @garages_mail, address: @address, phone: @phone}
    end
  end

end
