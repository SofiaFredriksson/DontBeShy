class Staff < ApplicationRecord
    has_many :posts
    has_many :solutions
end
