class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.text :text
      t.integer :author_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
