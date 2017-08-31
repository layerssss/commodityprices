class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.text :content
      t.boolean :finished, default: false

      t.timestamps
    end
  end
end
