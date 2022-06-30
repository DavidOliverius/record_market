FactoryBot.define do
  factory :listing do
    title { "MyString" }
    artist { "MyString" }
    label { "MyString" }
    condition { "MyString" }
    description { nil }
    price { 1 }
    sold { false }
    user { nil }
    genre { nil }
  end
end
