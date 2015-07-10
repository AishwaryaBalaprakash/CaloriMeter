class UserInfo < ActiveRecord::Base
  has_one :user
  has_many :user_calories_datum
  validates_presence_of :first_name, :last_name, :gender, :height, :dob, :weight
  validates_format_of :first_name, :last_name, :with => /\A([A-Za-z]*)[.\s]*[A-Za-z]+\z/, :message => "This field may contain only alphabets"  
  
  def self.get_gender
   @gender = %w[Male Female]
  end
  
  def self.get_height
   @height = %w[cm m]
  end
  
  def self.get_weight
   @weight = %w[kg lbs]
  end
end
