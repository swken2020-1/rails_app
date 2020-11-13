class CreateRecruitments < ActiveRecord::Migration[5.2]
  def change
    create_table :recruitments do |t|
      t.string :mode, presence: true
      t.string :rank, presence: true
      t.string :use_chara, presence: true
      t.string :need_chara, presence: true
      t.string :play_style, presence: true
      t.integer :flag, null: false, default: 1
      t.integer :user_id

      t.timestamps
    end
  end
end
