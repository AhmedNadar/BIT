# == Schema Information
#
# Table name: companies
#
#  id            :bigint           not null, primary key
#  name          :string
#  email         :string
#  website       :string
#  found_date    :date
#  user_id       :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#  suggested_url :string
#
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
