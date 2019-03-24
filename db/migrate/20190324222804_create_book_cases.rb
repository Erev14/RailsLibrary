class CreateBookCases < ActiveRecord::Migration[5.2]
  def change
    create_table :book_cases do |t|

      t.timestamps
    end
  end
end
