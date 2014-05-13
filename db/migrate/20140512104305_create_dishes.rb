class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :photo
      t.string :description
      t.string :ingridients
      t.string :type

      t.timestamps
    end
  end
end
