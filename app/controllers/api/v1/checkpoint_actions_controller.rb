class Api::V1::CheckpointActionsController < ApplicationController
  def index
    @checkpoint_actions = current_user.checkpoint_actions
    render 'index.json.jbuilder'
  end

  def create
    @checkpoint_action = CheckpointAction.new(
      action_id: params[:action_id],
      description: params[:description],
      date: params[:date],
      user_bill_id: params[:user_bill_id],
      user_id: current_user.id,
      status: "Incomplete"
    )
    if checkpoint_action.save
      flash[:success] = 'Action created successfully!'
      redirect_to "/checkpoint_actions/#{params[:user_bill_id]}"
    else
      flash[:warning] = 'Action not saved, please try again.'
      redirect_to '/checkpoint_actions'
    end
  end

  def update
    @checkpoint_action = CheckpointAction.find_by(id: params[:id])
    @checkpoint_action.action_id = params[:action_id]
    @checkpoint_action.description = params[:description]
    @checkpoint_action.date = params[:date]
    @checkpoint_action.user_bill_id = params[:user_bill_id]
    @checkpoint_action.user_id = current_user.id
    @checkpoint_action.status = params[:status]
    @checkpoint_action.save
    p "***** ERRORS ******"
    p @checkpoint_action.errors.full_messages
    
    flash[:success] = "Action Completed!! Great job!"
    render 'show.json.jbuilder'
  end

  def show
    @checkpoint_actions = CheckpointAction.where(user_bill_id: params[:id])
    render 'show.json.jbuilder'
  end
end
