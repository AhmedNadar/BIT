# == Schema Information
#
# Table name: roles
#
#  id            :bigint           not null, primary key
#  name          :string           indexed => [resource_type, resource_id]
#  resource_type :string           indexed => [name, resource_id], indexed => [resource_id]
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  resource_id   :bigint           indexed => [name, resource_type], indexed => [resource_type]
#
# Indexes
#
#  index_roles_on_name_and_resource_type_and_resource_id  (name,resource_type,resource_id)
#  index_roles_on_resource_type_and_resource_id           (resource_type,resource_id)
#
FactoryBot.define do
  factory :role do
    
  end
end
