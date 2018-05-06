class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :slack_name
      t.string :slack_id
      t.text :small_avatar
      t.text :big_avatar
      t.string :email
      t.integer :rating
      t.integer :is_active
      t.timestamps
    end
  end
end
