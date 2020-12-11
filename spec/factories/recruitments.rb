FactoryBot.define do
    factory :recruitment do
        mode { 'カジュアル' }
        rank { 'hogehoge' }
        use_chara { 'レイス' }
        need_chara { 'パスファインダー' }
        play_style { 'hoge' }
    end
end