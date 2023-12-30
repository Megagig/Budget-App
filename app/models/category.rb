class Category < ApplicationRecord
  belongs_to :user
  has_many :category_details, foreign_key: 'category_id'
  end
  