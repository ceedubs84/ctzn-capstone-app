class CheckpointActionsController < ApplicationController
  def index
    @checkpoint_actions = CheckpointAction.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    checkpoint_action = CheckpointAction.new(
      action_id: params[:action_id],
      description: params[:description],
      date: params[:date],
      user_bill_id: params[:user_bill_id],
      user_id: current_user.id,
      status: "Incomplete"
    )
    if checkpoint_action.save
      flash[:success] = 'Successfully created!'
      redirect_to "/checkpoint_actions"
    else
      flash[:warning] = 'Action not saved, please try again.'
      redirect_to '/checkpoint_actions/new'
    end
  end

  def show
    @checkpoint_action = CheckpointAction.find_by(id: params[:id])
    render 'show.html.erb'
  end

end
