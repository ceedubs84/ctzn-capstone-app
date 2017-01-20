class Api::V1::UserBillsController < ApplicationController
  def index
    @user_bills = current_user.user_bills
    render 'index.json.jbuilder'
  end
end
