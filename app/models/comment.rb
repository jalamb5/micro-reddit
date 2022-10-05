class Comment < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }, uniqueness: true
  validates :body, presence: true, length: { minimum: 3 }
  validates :user_id, presence: true
  validates :post_id, presence: true

  belongs_to :post
  belongs_to :user
end
