class CreateUserCaloriesData < ActiveRecord::Migration
  def change
    create_table :user_calories_data do |t|
      t.integer :user_info_id
      t.datetime :date_tracked
      t.integer :target
      t.integer :consumed_calories

      t.timestamps
    end
  end
end
