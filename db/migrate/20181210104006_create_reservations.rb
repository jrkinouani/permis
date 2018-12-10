class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :price
      t.string :phone
      t.string :address
      t.references :stage, foreign_key: true


      t.timestamps
    end
  end
end
