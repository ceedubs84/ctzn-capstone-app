class UserBillsController < ApplicationController

  def index
    @user_bills = current_user.user_bills
    render 'index.html.erb'
  end

  def create
    user_bill = UserBill.new(
      user_id: params[:user_id],
      bill_id: params[:bill_id],
      vote: 0,
      official_title: params[:official_title]
    )
    if user_bill.save!
      flash[:success] = 'Added successfully!'
      redirect_to "/user_bills"
    else
      flash[:warning] = 'Bill not saved, please try again.'
      redirect_to '/bills'
    end
  end

  def show
    @datum = Unirest.get(
      "#{new_uri}",
      headers: HEADERS
    ).body
    @user_bill = @datum["results"][0]
    render 'show.html.erb'  
  end

  def destroy
    user_bill = UserBill.find_by(id: params[:id])
    user_bill.destroy
    flash[:warning] = "Bill Removed Successfully!"
    redirect_to "/user_bills"
  end

end