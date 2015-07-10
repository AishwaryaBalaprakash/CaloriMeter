class CreateServings < ActiveRecord::Migration
  def change
    create_table :servings do |t|
      t.string :serving_size

      t.timestamps
    end
  end
end
