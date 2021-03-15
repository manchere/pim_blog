FactoryBot.define do
  factory :product do
    name { "MyString" }
    slug { "MyString" }
    descriptions { "MyText" }
    online { "MyString" }
    position { 1 }
    score { 1 }
    price { 1.5 }
    market_id { "" }
  end
end
