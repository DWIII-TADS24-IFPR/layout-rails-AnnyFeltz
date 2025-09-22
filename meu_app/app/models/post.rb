class Post < ApplicationRecord
  validates :title, uniqueness: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def likes_count
    likes.count
  end

  def liked_by?(admin)
    likes.exists?(admin_id: admin.id)
  end
end
