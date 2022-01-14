FactoryBot.define do
  factory :subscription do
    title { "Tea Party" }
    price { 1.5 }
    frequency { Faker::Number.between(from: 0, to: 2)}
    status { 0 }
    customer { nil }
    tea { nil }
  end
end
