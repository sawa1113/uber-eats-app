class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.references :restaurant, null: false, foreign_key: true # restaurant_id というカラムが作られ、店舗と紐づく
      t.string :name, null: false # 商品名
      t.integer :price, null: false # 価格
      t.text :description, null: false # 商品説明

      t.timestamps
    end
  end
end
