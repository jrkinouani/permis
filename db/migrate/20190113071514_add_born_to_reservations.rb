class AddBornToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :born, :string
  end
end
