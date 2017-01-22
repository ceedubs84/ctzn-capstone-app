class LegislatorsController < ApplicationController
  def index
    @data = Unirest.get(
      "https://congress.api.sunlightfoundation.com/legislators/locate?latitude=41.9228863&longitude=-87.6894048"
    ).body
    @legislators = @data["results"]
    render 'index.html.erb'
  end

  def initial
    self[0,1]
  end

  def show
    @datum = Unirest.get(
      "https://congress.api.sunlightfoundation.com/legislators?bioguide_id=#{params[:id]}"
    ).body
    @legislator = @datum["results"][0]
    render 'show.html.erb'
  end
end
