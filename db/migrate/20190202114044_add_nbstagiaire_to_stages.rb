class AddNbstagiaireToStages < ActiveRecord::Migration[5.1]
  def change
    add_column :stages, :nbstagiaire, :string
  end
end
