require 'rails_helper'

describe '募集一覧', type: :system do
  describe '一覧機能' do
    before do
      user_test = FactoryBot.create(:user, name: 'testuser', discord_id: 'testuser')
      FactoryBot.create(:recruitment, mode: 'カジュアル', rank: 'hogehoge', use_chara: 'レイス', need_chara: 'パスファインダー', play_style: 'hoge', user: user_test)
    end
    
    context 'ユーザーAがログインしているとき' do
      before do
        visit login_path
        fill_in 'ユーザID', with: 'testuser'
        fill_in 'パスワード', with: 'password1234'
　　　　click_button 'ログインする'
　　　end
　　　
　　　it 'ユーザーAが作成したタスクが表示される' do
　　　  expect(page).to have_content 'hoge'
　　　end
　　end
　end
end