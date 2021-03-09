class MakeChangesToTheProductTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :image_link
  end
end
