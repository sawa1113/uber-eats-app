class Food < ApplicationRecord
  belongs_to :restaurant
  belongs_to :order, optional: true
  has_one :line_food, dependent: :destroy # LineFoodだけ残るのを防ぐ

  # バリデーションを追加
  validates :name, :price, presence: true
end