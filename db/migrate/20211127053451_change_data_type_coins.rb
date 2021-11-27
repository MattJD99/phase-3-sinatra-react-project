class ChangeDataTypeCoins < ActiveRecord::Migration[6.1]
  def change
    change_column :coins, :price_change_24hr, :decimal
  end
end
