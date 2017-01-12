class CheckpointsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    checkpoint = Checkpoint.new(
      date: params[:date] || Time.now,
      description: params[:description],
      bill_id: params[:bill_id],
      user_id: current_user.id
    )
    checkpoint.save
    redirect_to '/user_bills'
  end

  def show
    render 'show.html.erb'
  end

  def destroy
    redirect_to '/user_bills'
  end

end
