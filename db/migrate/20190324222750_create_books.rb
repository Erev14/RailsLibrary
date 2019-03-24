# frozen_string_literal: true

# create books table
class CreateBooks < ActiveRecord::Migration[5.2]
  # def change
  #   create_table :books do |t|
  #
  #     t.timestamps
  #   end
  # end

  def self.up
    create_table :books do |t|
      t.string :title, limit: 250, null: false
      t.string :editorial, limit: 250, null: false
      t.string :edition_year, limit: 5
      t.string :edition_number, limit: 25
      t.string :ISBN, limit: 25, null: false, index: true
      t.string :author, limit: 150, null: false
      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
