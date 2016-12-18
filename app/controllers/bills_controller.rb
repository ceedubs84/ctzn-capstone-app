class BillsController < ApplicationController
  def index
    @bills = Bill.all
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