class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name_for_goals
      t.string :name_for_expertises

      t.timestamps
    end
  end
end
