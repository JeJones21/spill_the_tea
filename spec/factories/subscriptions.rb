FactoryBot.define do
  factory :subscription do
    title { "MyString" }
    price { 1.5 }
    frequency { 1 }
    status { "MyString" }
    customer { nil }
    tea { nil }
  end
end
