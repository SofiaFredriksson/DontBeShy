class Staff < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :solutions

end
