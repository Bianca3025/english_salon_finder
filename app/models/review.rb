class Review < ApplicationRecord
  validates :content, presence: true, length: { maximum: 65_535 }

  belongs_to :user
  belongs_to :salon
end
