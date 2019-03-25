# frozen_string_literal: true

# Author's Moodel
class Author < ApplicationRecord
  has_many :books, inverse_of: :author
  validates_associated :books

  validates :name, presence: true, length: { in: 2..60 }
  validates :father_last_name, presence: true, length: { in: 2..35 }
  validates :mother_last_name, length: { in: 2..35 }, allow_nil: true,
                               allow_blank: true
  validates :nationality, length: { in: 2..35 }, allow_nil: true,
                          allow_blank: true
  validates :historical_review, length: { minimun: 2 }, allow_nil: true,
                                allow_blank: true
end
