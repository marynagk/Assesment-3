class CreateExpertises < ActiveRecord::Migration[5.2]
  def change
    create_table :expertises do |t|
      t.text :tags
      t.integer :user_id
      t.integer :category_id
      t.string :image
      t.text :description
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
