class Reservation < ApplicationRecord
   belongs_to :stage
   mount_uploader :document, DocumentUploader
   mount_uploader :docidone, DocidoneUploader
   mount_uploader :docitwo,  DocidtwoUploader
end
