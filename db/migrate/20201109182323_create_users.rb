class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.string :discord_id, null: false, unique: true
      t.string :password_digest, null: false

      t.timestamps
      
    end
  end
end
