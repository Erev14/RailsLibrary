# frozen_string_literal: true

# Book Case's Moodel
class BookCase < ApplicationRecord
  belongs_to :book, required: false

  # validates :levels, presence: true, numericality: { only_integer: true }
  # validates :hall, presence: true, numericality: { only_integer: true }

  def level_hall
    "#{level}-#{hall}"
  end
end
