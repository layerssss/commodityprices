class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.integer :commodity_id
      t.string :last_price
      t.datetime :fetch_time

      t.timestamps
      
      t.index ['commodity_id'], name: 'index_prices_on_commodity_id'
      t.index ['fetch_time'], name: 'index_prices_on_fetch_time'
    end
  end
end
