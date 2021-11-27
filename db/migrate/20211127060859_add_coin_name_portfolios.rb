class AddCoinNamePortfolios < ActiveRecord::Migration[6.1]
  def change
    add_column :portfolios, :coin_name, :string
  end
end
