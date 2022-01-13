FactoryBot.define do
  factory :subscription do
    title { "MyString" }
    price { 1.5 }
    frequency { Faker::Number.between(from: 0, to: 2)}
    status { "MyString" }
    customer { nil }
    tea { nil }
  end
end
