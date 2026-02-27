class Salon < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 65_535 }

  has_many :reviews, dependent: :destroy
end
