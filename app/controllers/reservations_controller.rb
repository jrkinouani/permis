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
    @reservation = Reservation.new(reservation_params)
     stage = @reservation.stage
    if @reservation.save
      AdminMailer.new_reservation(@reservation).deliver_now
       if stage
         price = stage.price
         if price
          @reservation.price = stage.price
          else
            flash[:danger] = 'Vous avez mal renseigné les champs de textes !'
          end
        redirect_to reservation_path(@reservation)
       end
     else

      redirect_to new_reservation_path(reservation_params)
         flash[:danger] = 'Vous avez mal renseigné les champs de textes !'
     end
  end

  def reservation_params
    params.require(:reservation).permit(:last_name, :first_name, :price, :stage_id, :phone, :address, :email,:date1, :document, :born, :docidone, :docidtwo )
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
