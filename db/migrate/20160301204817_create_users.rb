class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_hash

      t.timestamps
    end
    add_index :users, :person_id
  end
end
