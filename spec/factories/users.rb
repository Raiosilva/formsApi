FactoryBot.define do
  timestamp = loop do
    date = Faker::Time.date.to_time
    break date.strftime("%F %T") if data <= Date.today
  end

  factory :user do
    uid           { Faker::Lorem.word }
    email         { Faker::Internet.email }
    name          { Faker::Name.name }
    nickname      { Fake::Lorem.word }
    provider      {  'email' }
    confirmed_at  timestamp
    created_at    timestamp
    updated_at    timestamp
  end
end