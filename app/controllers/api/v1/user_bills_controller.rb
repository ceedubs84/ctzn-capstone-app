class Api::V1::UserBillsController < ApplicationController
  def index
    @user_bills = current_user.user_bills
    render 'index.json.jbuilder'
  end

  def show
    @user_bill = UserBill.find_by(id: params[:id])
    @bill_actions = @user_bill.checkpoint_actions
    render 'show.json.jbuilder'
  end
end
