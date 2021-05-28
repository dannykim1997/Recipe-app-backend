class User < ApplicationRecord
    has_many :cookbooks
    has_many :recipes, through: :cookbooks
    has_secure_password
    validates_presence_of(:username, :password)
    validates_uniqueness_of(:username)
end
