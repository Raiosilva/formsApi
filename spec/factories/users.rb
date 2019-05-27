FactoryBot.define do
  timestamp = loop do
     data = Faker::Time.between(DateTime.now - 1, DateTime.now).to_time
     break data.strftime("%F %T") if data <= Date.today
  end

  factory :user do
    uid           { Faker::Lorem.word }
    email         { Faker::Internet.email }
    name          { Faker::Name.name }
    nickname      { Faker::Internet.username }
    password      { Faker::Internet.password }
    provider      {  'email' }
    confirmed_at  {timestamp}
    created_at    {timestamp}
    updated_at    {timestamp}
  end
end
