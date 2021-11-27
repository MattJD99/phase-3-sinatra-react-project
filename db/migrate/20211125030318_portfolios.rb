class Portfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :user_id
      t.string :name_of_portfolio
      t.decimal :price_paid
      t.string :name
      t.decimal :price
      t.decimal :price_change_24hr
      t.timestamps
      t.timestamps
    end
  end
end
