class Page < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "title", "content", "updated_at", "permalink" ]
  end

  validates :title, presence: true
end
