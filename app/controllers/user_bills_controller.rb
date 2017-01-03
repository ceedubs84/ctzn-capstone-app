class UserBillsController < ApplicationController
  HEADERS = { "X-API-Key" => "ACnwGyW9cD70kbaj4JtPW5WypaLdKYNL4V8Coviy" }

  def index
    @data = Unirest.get(
      "#{['https://api.propublica.org/congress/v1/114/house/bills/introduced.json']}",
      headers: HEADERS
    ).body
    render 'index.html.erb'
  end

end
