class Tag < ApplicationRecord
    has_many :taggings
    has_many :todo_lists, through: :taggings
end
