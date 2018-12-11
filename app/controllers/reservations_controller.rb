class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :destroy, :edit, :update]

  def index
    @reservations = Reservation.includes(:stage).all
  end

  def show
  end

  def destroy
    @reservations.destroy
    head :ok
  end

  def edit
  end

  def update
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def new
    @stage =  Stage.find(params[:stage_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create!(reservation_params)
    stage = @reservation.stage
     if stage
       price = stage.price
       if price
        @reservation.price = stage.price
      else
          flash[:danger] = 'Vous avez mal renseigné les champs de textes !'
      end
      @reservation.save
     end
     redirect_to reservation_path(@reservation)
  end

  def reservation_params
    params.require(:reservation).permit(:last_name, :first_name, :price, :stage_id, :phone, :address, :email,:date1 )
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
