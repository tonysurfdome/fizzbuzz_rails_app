FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password 'password'

    trait :with_user_favorite do
      user_favorite do |user|
        create(:user_favorite)
      end
    end
  end
end
