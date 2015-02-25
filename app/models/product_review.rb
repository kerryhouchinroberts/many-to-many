class ProductReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :title, presence: true
  validates :description, presence: true
  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true
end
