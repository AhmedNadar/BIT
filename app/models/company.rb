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
