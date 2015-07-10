class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :height
      t.datetime :dob
      t.integer :weight

      t.timestamps
    end
  end
end
