class CreateOrdersMenus < ActiveRecord::Migration
  def change
    create_table :menus_orders do |t|
      t.integer :orders_id
      t.integer :menus_id
    end
  end
end
