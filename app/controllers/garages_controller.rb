class GaragesController < ApplicationController

  def index
    require "open-uri"
    require "nokogiri"

    # @garages_name = []
    # @garages_address = []
    @garages = []

    ingredient = "Nantes-44000.html"
    url = "https://www.allogarage.fr/garages-par-ville/liste-garage-#{ingredient}"

    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search(".titre_fiche_garage").each do |element|
      @garages_name = element.css('a').text
      # @garages_address = element.css('br').text
      @garages_mail = element.css('a').attribute("href").value
      @garages << { name: @garages_name, mail: @garages_mail }
    end
  end


end
