class Stage < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
