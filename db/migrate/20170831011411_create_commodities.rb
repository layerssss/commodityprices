class CreateCommodities < ActiveRecord::Migration[5.1]
  def change
    create_table :commodities do |t|
      t.string :yahoo_symbol

      t.timestamps
    end
  end
end
