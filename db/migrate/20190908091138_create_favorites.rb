class CreateFavorites < ActiveRecord::Migration[5.2]
  def change #rails db:migrateで実行されるメソッド
    create_table :favorites do |t| #favoritesというtableを新たに作成
      t.references :user, foreign_key: true　#外部キーを追加する際にreference型を利用
      t.references :micropost, foreign_key: true

      t.timestamps
      
      t.index  [:user_id, :micropost_id], unique: true #重複するものが保存されないようにする設定
    end
  end
end
