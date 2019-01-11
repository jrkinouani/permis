class AddDocumentToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :document, :string
  end
end
