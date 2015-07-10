class Menu < ActiveRecord::Base
 belongs_to :restaurant
 belongs_to :serving
end
