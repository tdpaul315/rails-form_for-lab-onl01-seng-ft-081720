class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :create, :edit, :update]

    def index 
    end 

    def new 
        @student = Student.new
    end 

    def create 
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end 

    def show 
        @student
    end 

    def edit 
        @student
    end 

    def update 
        @student.update(student_params)
        redirect_to student_path(@student)
    end 

    private 

    def find_student
        @student = Student.find_by_id(params[:id])
    end 

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end 
end 