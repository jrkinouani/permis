class Stage < ApplicationRecord
  has_many :reservations, dependent: :destroy
  mount_uploader :document, DocumentUploader
end
