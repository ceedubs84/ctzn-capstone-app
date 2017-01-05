class CheckpointsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    redirect_to '/checkpoints'
  end

  def show
    render 'show.html.erb'
  end

  def destroy
    redirect_to '/checkpoints'
  end

end
