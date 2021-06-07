class Api::V1::EnrollmentsController < ApplicationController
    before_action :set_course


    def index
        @enrollments = @course.enrollments
        render json: @enrollments
    end

    def create
        @enrollment = Enrollment.new(enrollment_params)
        if @enrollment.save
            render json: @enrollment
        else
            render json: {error: 'Enrollment not successful.'}
        end
    end

    def show
        @enrollment = @course.enrollments.find_by(id: params:[:id])
        render json: @enrollment
    end

    def destroy
        @enrollment = Enrollment.find(params:[:id])
        @enrollment.destroy
    end

    private

    def enrollment_params
        params.require(:transaction).permit(:student_id, :course_id)
    end

    def set_course
        @course = Course.find(params:[course_id])
    end

end
