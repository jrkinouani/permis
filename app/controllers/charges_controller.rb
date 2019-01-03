class ChargesController < ApplicationController
def new
   @reservation = Reservation.find(params["reservation_id"])
end

def create
  @reservation = Reservation.find(params["reservation_id"])
     # Amount in cents
     @amount = @reservation.price.to_i * 100


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
    )
     @reservation = Reservation.find(params["reservation_id"])
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
