class Restaurant < ActiveRecord::Base
 has_many :menu
 validates_presence_of :restaurant_name

  def self.search(search_string)
    restaurant = Restaurant.where("id = ?",search_string)
  end
end
