class ChargesController < ApplicationController
  before_action :authorize
  def new
  end

def create
  # Amount in cents
  @amount = params[:amount].to_i
  @current_user = current_user
  @goal=Goal.find(flash[:id])
  @charity=Charity.last
  flash[:user] = @goal.user
  flash[:goal] = @goal
  flash[:amount] = @amount

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

Donation.create(user_id: @current_user.id, goal_id: @goal.id, charity_id: @charity.id, amount: @amount/100.00, description: "Donation to #{@charity.name}")

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to user_goal_path(@goal.user, @goal)
end
end
