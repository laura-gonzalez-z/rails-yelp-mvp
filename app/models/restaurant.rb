class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  validates :address, presence: true
end
