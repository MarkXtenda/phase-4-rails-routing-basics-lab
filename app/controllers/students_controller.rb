class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grade = Student.order(grade: :desc)
        render json: students_by_grade
    end

    def highest_grade
        students_by_highest_grade = Student.order(grade: :desc).limit(1)[0]
        render json: students_by_highest_grade
    end
end

