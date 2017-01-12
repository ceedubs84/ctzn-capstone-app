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
      bill_id: params[:bill_id],
      user_id: current_user.id
    )
    if checkpoint.save
      flash[:success] = 'Successfully created!'
      redirect_to '/user_bills'
    else
      flash[:success] = 'Welcome! You successfully logged in!'
  end

  def show
    render 'show.html.erb'
  end

  def destroy
    redirect_to '/user_bills'
  end

end
