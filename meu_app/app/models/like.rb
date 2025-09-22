class Like < ApplicationRecord
  belongs_to :post
  belongs_to :admin

  validates :admin_id, uniqueness: { scope: :post_id } # impede duplicados
end
