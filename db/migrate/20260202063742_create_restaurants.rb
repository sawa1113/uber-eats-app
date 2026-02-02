class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false # 店舗名
      t.integer :fee, null: false, default: 0 # 配送手数料（デフォルト0円）
      t.integer :time_required, null: false # 配達予定時間

      t.timestamps
    end
  end
end
