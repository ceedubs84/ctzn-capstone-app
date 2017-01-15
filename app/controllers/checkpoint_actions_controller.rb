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
      status: "Incomplete"
    )
    checkpoint_action.save
    redirect_to "/checkpoint_actions"
  end

  def show
    render 'show.html.erb'
  end

end
