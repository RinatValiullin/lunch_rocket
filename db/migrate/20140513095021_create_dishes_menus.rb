class CreateDishesMenus < ActiveRecord::Migration
  def change
    create_table :dishes_menus do |t|
      t.integer :dishe_id
      t.integer :menu_id
      t.timestamps
    end
  end
end
