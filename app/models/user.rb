# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null, indexed
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string           indexed
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  rolify
  
  # before_create :set_username
  after_create :assign_default_role
  # after_create :add_profile
  before_save :downcase_email

  # association 
  has_person_name
  has_many  :companies, dependent: :destroy
  # has_one  :profile, dependent: :destroy
  # accepts_nested_attributes_for :profile
  has_person_name
  has_one_attached :avatar
  


  # validation
  validates_format_of :email,:with => Devise::email_regexp
  validates           :email, presence:   true, 
                              length:     { maximum: 50 },
                              uniqueness: { case_sensitive: false }
  

  def assign_default_role
    add_role(:client)
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end

  # def add_profile
  #   create_profile if profile.nil?
  # end

  # def set_username
  #   self.username = "#{first_name.downcase.titleize} #{last_name.downcase.titleize}".strip
  # end


	def admin?
		has_role?(:admin)
	end

  def client?
		has_role?(:client)
  end

  private
    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end  

end
