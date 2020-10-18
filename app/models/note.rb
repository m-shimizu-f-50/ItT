class Note < ApplicationRecord
  belongs_to :user,optional: true
  validates :title, presence: true
  validates :explanation, presence: true
end
