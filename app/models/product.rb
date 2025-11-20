class Product < ApplicationRecord
  belongs_to :category

  has_one_attached :image
  def self.ransackable_attributes(auth_object = nil)
    [ "category_id", "category_name", "created_at", "description", "id", "price", "product_name", "updated_at" ]
  end
  def self.ransackable_associations(auth_object = nil)
    [ "category", "image" ]
  end

  validates :product_name, presence: true
end
