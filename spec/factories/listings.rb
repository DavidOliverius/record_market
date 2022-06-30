FactoryBot.define do
  factory :listing do
    title { "MyString" }
    artist { "MyString" }
    label { "MyString" }
    condition { 1 }
    description { nil }
    price { 1 }
    sold { false }
    user { nil }
    genre { nil }
  end
end
