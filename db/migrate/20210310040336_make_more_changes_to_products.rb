class MakeMoreChangesToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :interior_color, :interior
    remove_column :products, :interior_name
  end
end
