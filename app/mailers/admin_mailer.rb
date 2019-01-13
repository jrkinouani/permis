class AdminMailer < ActionMailer::Base
  def new_reservation(reservation)
    @reservation = reservation
    mail(from: 'biblioruncontact@gmail.com', to: 'kinouani@gmail.com', subjectt: "Nouvelle réservation !")
  end

  def paiement(reservation)
    @reservation = reservation
    mail(from: 'biblioruncontact@gmail.com', to: 'kinouani@gmail.com', subjectt: "'Paiement validé !")

  end
end
