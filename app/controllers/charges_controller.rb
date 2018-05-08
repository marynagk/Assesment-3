class ChargesController < ApplicationController
  before_action :authorize
  def new
  end

def create
  # Amount in cents
  @amount = params[:amount].to_i
  @user = current_user
  @goal=Goal.find(flash[:id])
  @charity=Charity.find(1)
  byebug
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => "Donation for goal #{@goal.tags}",
    :currency    => 'aud'
  )

Donation.create(user_id: @user.id, goal_id: @goal.id, charity_id: @charity.id, amount: @amount/100, description: "Donation to #{@charity.name}")

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
