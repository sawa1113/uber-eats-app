class Order < ApplicationRecord
  has_many :line_foods, dependent: :destroy # 注文が消えたら関連データも整理

  validates :total_price, numericality: { greater_than: 0 }

  def save_with_update_line_foods!(line_foods)
    # self.transaction にリファクタリング
    transaction do
      line_foods.each do |line_food|
        # update_attributes! はRails 7では動かないため、update! に変更。
        line_food.update!(active: false, order: self)
      end
      self.save!
    end
  end
end