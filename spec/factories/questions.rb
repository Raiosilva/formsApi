FactoryBot.define do
  factory :question do
    title { Faker::Lorem.sentence }
    kind { [ "short_text", "long_text", "integer", "boolean" ].sample }
    form
  end
end
