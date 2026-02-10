class Restaurant < ApplicationRecord
  has_many :foods
  has_many :line_foods, through: :foods

  DEFAULT_NAME_LENGTH = 30

  # 共通するバリデーション（presence: true）を1行にまとめる
  validates :name, presence: true, length: { maximum: DEFAULT_NAME_LENGTH }
  
  # 数値に関するバリデーション
  validates :fee, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :time_required, presence: true, numericality: { only_integer: true, greater_than: 0 }
end