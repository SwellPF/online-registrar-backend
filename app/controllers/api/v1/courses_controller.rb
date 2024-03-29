class Api::V1::CoursesController < ApplicationController

    def index
        courses = Course.all
        render json: CourseSerializer.new(courses)
    end

    def show
        course = Course.find(params[:id])
        render json: CourseSerializer.new(course)
    end

    private

    def course_params
        params.require(:course).permit(:title, :description, :credit_hours, :days, :start_time, :end_time, :capacity, :category_id)
    end

end
