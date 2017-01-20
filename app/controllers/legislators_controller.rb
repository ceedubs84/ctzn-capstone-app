class LegislatorsController < ApplicationController
  def index
    @data = Unirest.get(
      "https://congress.api.sunlightfoundation.com/legislators/locate?latitude=41.9228863&longitude=-87.6894048"
    ).body
    @legislators = @data["results"]
    render 'index.html.erb'
  end
end
