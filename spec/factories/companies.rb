FactoryBot.define do
  factory :company do
    name { "MyString" }
    details { nil }
    email { "MyString" }
    website { "MyString" }
    found_date { "2020-09-09" }
    user { nil }
  end
end
