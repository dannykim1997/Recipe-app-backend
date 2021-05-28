class User < ApplicationRecord
    has_many :cookbooks
    has_many :recipes, through: :cookbooks

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, presence: true, length: {minimum:8}, confirmation: true
    validates :password_confirmation, presence: true
end
