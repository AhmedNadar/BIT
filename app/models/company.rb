# == Schema Information
#
# Table name: companies
#
#  id            :bigint           not null, primary key
#  email         :string
#  found_date    :date
#  name          :string
#  slug          :string           indexed
#  suggested_url :string
#  website       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint           not null, indexed
#
# Indexes
#
#  index_companies_on_slug     (slug) UNIQUE
#  index_companies_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Company < ApplicationRecord
  
  # association 
  belongs_to :user, optional: true
  has_rich_text :details
  has_one_attached :logo

  include FriendlyId
  friendly_id :name, use: [:slugged, :finders]



  # validatation
  validates           :name,                presence: true
  validates_length_of :name, maximum: 80,   allow_blank: false
  validates           :details,             presence: true
  validates           :email,               presence: true
  validates           :website,             presence: true
  validates           :found_date,          presence: true

end
