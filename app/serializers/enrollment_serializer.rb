class EnrollmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :student, :course
  belongs_to :course
  belongs_to :student
end
