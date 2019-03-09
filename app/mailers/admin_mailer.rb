class AdminMailer < ActionMailer::Base
  def new_reservation(reservation)
    @reservation = reservation
    mail(from: 'damien.narsapa@permisapoints974.re', to: ['kinouani@gmail.com','oumasma93@hotlmail.com'], subject: "Nouvelle réservation !")
  end

  def paiement(reservation)
    @reservation = reservation
    mail(from: 'damien.narsapa@permisapoints974.re', to: ['kinouani@gmail.com','damien.narsapa@permisapoints974.re'], subject: "'Paiement validé !")

  end

  def user(reservation)
    @reservation = reservation
    mail(from: 'damien.narsapa@permisapoints974.re', to: @reservation.email, subject: "Convocation au stage !")
  end

  def contact(message)
    @message = message
    mail(from: 'damien.narsapa@permisapoints974.re', to: ['kinouani@gmail.com','damien.narsapa@permisapoints974.re'], subject: "Nouveau message depuis le site")
  end

end
