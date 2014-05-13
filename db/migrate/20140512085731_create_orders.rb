class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :status
      t.integer :price
      t.integer :deliver_id

      t.timestamps
    end
  end
end
