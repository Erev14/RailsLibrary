# frozen_string_literal: true

# Book's Moodel
class Book < ApplicationRecord
  belongs_to :author
  has_one :book_case
  validates :title, presence: true, length: { in: 2..250 }
  validates :editorial, presence: true, length: { in: 2..250 }
  validates :edition_year, length: { is: 4 }, allow_nil: true,
                           numericality: { only_integer: true,
                                           allow_nil: true },
                           allow_blank: true
  validates :edition_number
  validates :ISBN, presence: true, length: { in: 10..13 }, uniqueness: true,
                   numericality: { only_integer: true }
  # validates :author, presence: true
  # validates :book_case, presence: true
end
