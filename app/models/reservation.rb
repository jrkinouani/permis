class Reservation < ApplicationRecord
   belongs_to :stage
   mount_uploader :document, DocumentUploader
end
