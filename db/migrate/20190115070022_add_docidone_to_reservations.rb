class AddDocidoneToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :docidone, :string
  end
end
