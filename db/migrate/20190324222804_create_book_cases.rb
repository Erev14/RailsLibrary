class CreateBookCases < ActiveRecord::Migration[5.2]
  def change
    create_table :book_cases do |t|
      t.string :level, limit: 5, null: false
      t.string :hall, limit: 100, null: false
      t.timestamps
    end
  end
end
