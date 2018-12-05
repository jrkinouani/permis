class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :titre
      t.string :date1
      t.string :date2
      t.string :date3
      t.string :ville

      t.timestamps
    end
  end
end
