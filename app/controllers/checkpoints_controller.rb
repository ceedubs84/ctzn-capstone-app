class CheckpointsController < ApplicationController
  def index
    @checkpoints = Checkpoint.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    checkpoint = Checkpoint.new(
      
    )
    if checkpoint.save
      flash[:success] = 'Successfully created!'
      redirect_to "/checkpoint_actions/new?checkpoint_id=#{checkpoint.id}"
    else
      flash[:warning] = 'Checkpoint not saved, please try again.'
      redirect_to '/checkpoints/new'
    end
  end

  def show
    render 'show.html.erb'
  end

  def destroy
    checkpoint = Checkpoint.find_by(id: params[:id])
    checkpoint.destroy
    flash[:success] = "Bill Removed Successfully!"
    redirect_to "/user_bills"
  end

end
