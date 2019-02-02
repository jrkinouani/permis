class AddAdresseToStages < ActiveRecord::Migration[5.1]
  def change
    add_column :stages, :adresse, :string
  end
end
