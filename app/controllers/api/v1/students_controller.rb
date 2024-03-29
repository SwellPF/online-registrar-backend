class Api::V1::StudentsController < ApplicationController

    def create
        @student = Student.new(student_params)
        if @student.save
            render json: @student
        else
            render json: {error: "Error creating student"}
        end
    end

    def show
        student = Student.find(params[:id])
        render json: StudentSerializer.new(student)

    end

    def index
        students = Student.all
        render json: StudentSerializer.new(students)
    end


    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :status)
end
