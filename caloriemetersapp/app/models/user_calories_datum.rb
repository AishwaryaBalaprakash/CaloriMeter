class UserCaloriesDatum < ActiveRecord::Base
 belongs_to :user_info
 validates_presence_of :consumed_calories
end
