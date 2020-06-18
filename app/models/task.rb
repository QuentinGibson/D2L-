class Task < ApplicationRecord
    has_many :tags
    belongs_to :subject
end
