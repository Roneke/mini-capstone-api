class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.string :phone_numbers

      t.timestamps
    end
  end
end
