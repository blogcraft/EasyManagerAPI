class CreateSystemLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :system_logs do |t|
      t.string :type
      t.string :message

      t.timestamps
    end
  end
end
