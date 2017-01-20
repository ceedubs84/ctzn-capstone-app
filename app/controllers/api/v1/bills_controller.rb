class Api::V1::BillsController < ApplicationController
  def index
    @data = Unirest.get(
      "https://congress.api.sunlightfoundation.com/bills?history.active=true&order=last_action_at"
    ).body
    @bills = @data["results"]
    render 'index.json.jbuilder'
  end
end
