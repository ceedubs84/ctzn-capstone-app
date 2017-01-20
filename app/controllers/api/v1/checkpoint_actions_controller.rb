class Api::V1::CheckpointActionsController < ApplicationController
  def index
    @checkpoint_actions = current_user.checkpoint_actions
    render 'index.json.jbuilder'
  end

  def show
    @checkpoint_action = CheckpointAction.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
