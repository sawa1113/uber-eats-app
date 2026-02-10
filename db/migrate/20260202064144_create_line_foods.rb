class CreateLineFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :line_foods do |t|
      t.references :food, null: false, foreign_key: true, comment: '店舗ID'
      t.references :restaurant, null: false, foreign_key: true, comment: '商品ID'
      t.references :order, foreign_key: true, comment: '注文ID 注文確定前は空なので null: false は付けない。'
      t.integer :count, null: false, default: 0, comment: '品の個数(数量)'
      t.boolean :active, null: false, default: false, comment: 'active/not activeの状態(状態フラグ)'

      t.timestamps
    end
  end
end
