class UserBillsController < ApplicationController
  def index
    @bills = Unirest.get(

    ).body
    render 'index.html.erb'
  end

  def show
    render 'show.html.erb'
  end
end
