class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :destroy, :edit, :update]

  def new
    @message = Message.new
  end

  def create
    @message = Message.create!(message_params)

    if @message.save
        AdminMailer.contact(@message).deliver_now # Je vais expliquer cette ligne juste après...
      redirect_to new_message_path, flash: {success: (:"Votre message a bien été envoyé et sera traité dans les plus brefs délais.")}
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email,:message )
  end
end
