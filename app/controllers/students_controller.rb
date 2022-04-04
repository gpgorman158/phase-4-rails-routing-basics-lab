class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.order(:grade)
        high_to_low = students.reverse
        render json: high_to_low
    end

    def highest_grade
        students = Student.all.order(:grade)
        high_to_low = students.reverse
        render json: high_to_low[0]
    end
end
