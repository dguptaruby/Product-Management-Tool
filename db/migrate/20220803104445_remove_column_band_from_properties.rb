class RemoveColumnBandFromProperties < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :brand
    rename_column :properties, :color, :value
  end
end
