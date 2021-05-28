class Recipe < ApplicationRecord
    has_many :cookbooks
    has_many :users, through: :cookbooks
    # validates :id, uniqueness: true
end
