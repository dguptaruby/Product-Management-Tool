class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :color
      t.string :brand
      t.references :product
      t.timestamps
    end
  end
end
