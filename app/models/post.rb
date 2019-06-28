class Post < ApplicationRecord
    belongs_to :staff
    belongs_to :category
    has_many :solutions
end
