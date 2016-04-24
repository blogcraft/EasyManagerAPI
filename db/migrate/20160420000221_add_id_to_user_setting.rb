class AddIdToUserSetting < ActiveRecord::Migration[5.0]
  def change
    add_column :user_settings, :id, :primary_key
  end
end
