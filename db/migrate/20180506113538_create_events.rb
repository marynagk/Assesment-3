class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :description
      t.references :eventable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
