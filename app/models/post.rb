class Post < ApplicationRecord
    belongs_to :staff
    has_many :solutions
end
