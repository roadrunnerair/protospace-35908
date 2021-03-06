class Comment < ApplicationRecord
  belongs_to :prototype
  belongs_to :user
  has_one_attached :image

  validates :text, presence: true
end
