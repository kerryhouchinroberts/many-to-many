class CompanyReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  validates :title, presence: true
  validates :description, presence: true
  validates :company_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true
end
