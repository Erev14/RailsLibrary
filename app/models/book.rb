# frozen_string_literal: true

# Book's Moodel
class Book < ApplicationRecord
  belongs_to :author
  belongs_to :book_case
  # validates :title, presence: true, length: { in: 2..250 }, on: :create
  # validates :editorial, presence: true, length: { in: 2..250 }, on: :create
  # validates :edition_year, length: { is: 4 }, allow_nil: true,
  #                          numericality: { only_integer: true,
  #                                          allow_nil: true },
  #                          allow_blank: true, on: :create
  # validates :edition_number, on: :create
  # validates :ISBN, presence: true, length: { in: 10..13 }, uniqueness: true,
  #                  numericality: { only_integer: true }, on: :create

  # validates :author, presence: true
  # validates :book_case, presence: true
end
