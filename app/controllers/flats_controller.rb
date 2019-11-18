require 'json'
require 'open-uri'

class FlatsController < ApplicationController
  def index
    # create an instance var => @flats
    # @flats => json data from the remote api
    # url api = https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    raw_json = open(url).read
    @flats = JSON.parse(raw_json)
  end

  def show
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    raw_json = open(url).read
    flats = JSON.parse(raw_json)

    @the_flat = flats.find do |flat|
      flat["id"] == params["id"].to_i
    end
  end
end
