class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name, limit: 60, null: false
      t.string :father_last_name, limit: 35, null: false
      t.string :mother_last_name, limit: 35
      t.string :nationality, limit: 35
      t.text :historical_review
      t.timestamps
    end
  end
end
