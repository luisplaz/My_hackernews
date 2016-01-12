class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_votes

  validates :title, length: {maximum: 20}, presence: true
  validates :body, length: {maximum: 200}, presence: true
  validates :url, length: {maximum: 100}, presence: true

end
