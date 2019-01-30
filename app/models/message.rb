class Message < ApplicationRecord


  validates :name, :email, :message, presence: true
  validates :email, :format => { :with => %r{.+@.+\..+} }, allow_blank: true


end
