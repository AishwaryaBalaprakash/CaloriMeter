class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :restaurant_id
      t.integer :serving_id
      t.string :menu_item
      t.integer :calories

      t.timestamps
    end
  end
end
