# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  rolify
  
  # association 
  has_person_name
  has_many  :companies, dependent: :destroy
  has_one_attached :avatar
  before_save :downcase_email


  # validation
  validates_format_of :email,:with => Devise::email_regexp
  validates           :email, presence:   true, 
                              length:     { maximum: 50 },
                              uniqueness: { case_sensitive: false }
  
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
