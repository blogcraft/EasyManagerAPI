class CreateUserSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_settings, :id => false do |t|
      t.integer :user_id
      t.integer :setting_id
      t.string :value

      t.timestamps
    end
  end
end
