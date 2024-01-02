class Category < ApplicationRecord
  belongs_to :user
  has_many :category_details, foreign_key: 'category_id'

  validates :name, presence: true
  validates :amount, numericality: { only_decimal: true, greater_than_or_equal_to: 0 }
end
