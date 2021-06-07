class Course < ApplicationRecord
    belongs_to :category
    has_many :enrollments
    has_many :students, through: :enrollments
end
