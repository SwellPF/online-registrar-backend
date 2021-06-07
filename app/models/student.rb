class Student < ApplicationRecord
    has_many :enrollments
    has_many :courses, through: :enrollments
    validates :first_name, :last_name, :status, presence:true
end
