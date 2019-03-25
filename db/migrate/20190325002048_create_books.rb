class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, limit: 250, null: false
      t.string :editorial, limit: 250, null: false
      t.string :edition_year, limit: 4
      t.string :edition_number, limit: 25
      t.string :ISBN, limit: 13, null: false, index: true
      t.references :author, foreign_key: true
      t.references :book_case, foreign_key: true
      t.timestamps
    end
  end
end
