class BillsController < ApplicationController
  HEADERS = { "X-API-Key" => "ACnwGyW9cD70kbaj4JtPW5WypaLdKYNL4V8Coviy" }

  def index
    congress = params[:congress] || "115"
    chamber = params[:chamber] || "senate"
    type = params[:type] || "introduced"
    @data = Unirest.get(
      "https://api.propublica.org/congress/v1/#{congress}/#{chamber}/bills/#{type}.json",
      headers: HEADERS
    ).body
    @bills = @data["results"][0]["bills"]
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