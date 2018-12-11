class AddDate1ToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :date1, :string
  end
end
