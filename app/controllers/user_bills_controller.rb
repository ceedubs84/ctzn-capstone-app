class UserBillsController < ApplicationController
  HEADERS = { "X-API-Key" => "ACnwGyW9cD70kbaj4JtPW5WypaLdKYNL4V8Coviy" }

  def index
    @user_bills = current_user.user_bills
    render 'index.html.erb'
  end

  def create
    user_bill = UserBill.new(
      user_id: current_user.id,
      bill_uri: params[:bill_uri],
      vote: 0
    )
    user_bill.save!
    redirect_to "/user_bills"
  end

  def destroy
    user_bill = UserBill.find_by(id: params[:id])
    user_bill.destroy
    # flash[:warning] = "Bill Removed Successfully!"
    redirect_to "/user_bills"
  end

end