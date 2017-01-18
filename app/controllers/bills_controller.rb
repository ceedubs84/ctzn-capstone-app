class BillsController < ApplicationController
  # HEADERS = { "X-API-Key" => "ACnwGyW9cD70kbaj4JtPW5WypaLdKYNL4V8Coviy" }

  def index
    @data = Unirest.get(
      "https://congress.api.sunlightfoundation.com/bills?history.active=true&order=last_action_at"
    ).body
    @bills = @data["results"]
    render 'index.html.erb'
  end

  def show
    new_uri = (params[:id]).gsub('-', '/')
    @datum = Unirest.get(
      "#{new_uri}",
      headers: HEADERS
    ).body
    @bill = @datum["results"][0]
    render 'show.html.erb'  
  end

end