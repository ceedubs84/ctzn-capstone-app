class BillsController < ApplicationController
  HEADERS = { "X-API-Key" => "ACnwGyW9cD70kbaj4JtPW5WypaLdKYNL4V8Coviy" }

  def index
    @bills = Unirest.get(
      "https://api.propublica.org/congress/v1/114/house/bills/introduced.json",
      headers: HEADERS
    ).body
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