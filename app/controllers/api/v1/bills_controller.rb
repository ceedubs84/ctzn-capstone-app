class Api::V1::BillsController < ApplicationController
  def index
    @data = Unirest.get(
      "https://congress.api.sunlightfoundation.com/bills?history.active=true&order=last_action_at"
    ).body
    @bills = @data["results"]
    render 'index.json.jbuilder'
  end

  def show
    @datum = Unirest.get(
    "https://congress.api.sunlightfoundation.com/bills?bill_id=#{params[:id]}"
    ).body
    @bill = @datum["results"][0]
    render 'show.json.jbuilder'
  end
end
