class Note < ApplicationRecord
  belongs_to :user,optional: true
  validates :title, presence: true
  validates :explanation, presence: true

  belongs_to :category

  validates :rate, presence: true
  validates :rate, numericality: {
    # only_integer: true,
    less_than_or_equal_to: 3,
    greater_than_or_equal_to: 1,
  }
end
