class Student < ApplicationRecord
    has_many :enrollments
    has_many :courses, through: :enrollments
    validates :first_name, :last_name, :status, presence:true

    # def prevent_over_enrollment(enrollment)
    #   if enrollment.course.credit_hours + self.enrolled_hours < 18
        #    self.enrolled_hours += course.credit_hours
         #   self.save
        # else
        #     return "Too many hours enrolled."
    # end

end
