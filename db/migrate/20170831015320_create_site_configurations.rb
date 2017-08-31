class CreateSiteConfigurations < ActiveRecord::Migration[5.1]
  def change
    create_table :site_configurations do |t|
      t.integer :capture_interval_seconds, default: 10.minutes.to_i
      t.boolean :capturing, default: true

      t.timestamps
    end
  end
end
