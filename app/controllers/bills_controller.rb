class BillsController < ApplicationController
  HEADERS = { "X-API-Key" => "ACnwGyW9cD70kbaj4JtPW5WypaLdKYNL4V8Coviy" }

  def index
    congress = params[:congress] || "114"
    chamber = params[:chamber] || "house"
    type = params[:type] || "introduced"
    @data = Unirest.get(
      "https://api.propublica.org/congress/v1/#{congress}/#{chamber}/bills/#{type}.json",
      headers: HEADERS
    ).body
    @bills = @data["results"][0]["bills"]
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def show
    @bill = Bill.find_by(id: params[:id])
    render 'show.html.erb'
  end

end