class Reservation < ApplicationRecord
   belongs_to :stage

     validates :last_name, presence: true
     validates :first_name, presence: true
     validates :email, presence: true
     validates :phone, presence: true
     validates :born, presence: true
     validates :address, presence: true
     validates :document, presence: true
     validates :docidone, presence: true
     validates :docidone, presence: true
     validates :docidtwo,presence: true

   mount_uploader :document, DocumentUploader
   mount_uploader :docidone, DocidoneUploader
   mount_uploader :docidtwo,  DocidtwoUploader
end
