FactoryBot.define do
    factory :user do
        name { 'testuser' }
        discord_id { 'testuser' }
        password { 'password1234' }
        password_confirmation { 'password1234' }
    end
end