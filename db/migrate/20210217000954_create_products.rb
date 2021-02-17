class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.string :exterior, null: false
      t.string :interior_color, null: false
      t.string :interior_name, null: false
      t.string :wheel_type, null: false
      t.boolean :self_driving, null: false
      t.string :view, null: false
      t.string :image_link, null: false
      t.timestamps
    end
  end
end
