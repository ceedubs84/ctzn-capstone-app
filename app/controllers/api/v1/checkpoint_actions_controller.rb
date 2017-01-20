class Api::V1::CheckpointActionsController < ApplicationController
  def index
    @checkpoint_actions = current_user.checkpoint_actions
    render 'index.json.jbuilder'
  end
end
