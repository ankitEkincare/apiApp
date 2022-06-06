class HomeController < ApplicationController
  def index
    require 'net/http'
    @url = 'https://629dcd663dda090f3c0b70c8.mockapi.io/apiApp'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end
end
