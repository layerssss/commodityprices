class CreateCaptureErrors < ActiveRecord::Migration[5.1]
  def change
    create_table :capture_errors do |t|
      t.string :message

      t.timestamps
    end
  end
end
