class Note < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true,
                      length: { maximum: 140 }
  validates :user_id, presence: true
end
