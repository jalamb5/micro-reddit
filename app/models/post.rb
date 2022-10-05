class Post < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }, uniqueness: true
  validates :link, presence: true, format: { with: URI.regexp }

  belongs_to :user
  has_many :comments
end
