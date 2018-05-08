class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :charity_id
      t.integer :user_id
      t.integer :goal_id
      t.money :amount
      t.text :description

      t.timestamps
    end
  end
end
