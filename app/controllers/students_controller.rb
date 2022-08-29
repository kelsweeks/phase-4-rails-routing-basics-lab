class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        render json: {students.order_by(:grade desc)}
    end
end