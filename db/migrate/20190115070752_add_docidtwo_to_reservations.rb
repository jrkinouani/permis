class AddDocidtwoToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :docidtwo, :string
  end
end
