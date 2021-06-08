class Api::V1::StudentsController < ApplicationController

    def create
        
    end

    def show

    end

    def index
        students = Student.all
        render json: StudentSerializer.new(students)
    end

end
