class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :slack_name
      t.string :slack_id
      t.text :avatar
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
