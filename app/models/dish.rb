class Dish < ActiveRecord::Base
  mount_uploader :image, DishImageUploader
  has_and_belongs_to_many :menus
end
