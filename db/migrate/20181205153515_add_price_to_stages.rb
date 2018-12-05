class AddPriceToStages < ActiveRecord::Migration[5.1]
  def change
    add_column :stages, :price, :string
  end
end
