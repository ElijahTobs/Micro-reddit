class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user_id, presence: true
  validates :body, presence: true
  validates :title, length: { in: 10..30 }
end
