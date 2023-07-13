class ChangePriceFromIntegerToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, "numeric Using CAST (price as numeric)"
    change_column :products, :price, :decimal, precision: 9, scale: 2
  end
end
