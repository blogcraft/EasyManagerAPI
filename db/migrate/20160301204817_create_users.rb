class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_hash
      t.references :person, index: true, foreign_key: true

      t.timestamps
    end
  end
end
