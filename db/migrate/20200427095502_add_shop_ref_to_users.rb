class AddShopRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :shop, foreign_key: true
  end
end
