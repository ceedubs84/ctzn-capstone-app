class BillsController < ApplicationController
  def index
    @bills = Bill.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

end