class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            flash[:notice] = "Student is Added"
            redirect_to student_path(@student)
        else
            flash[:notice] = "Error"
            redirect_to new_student_path
        end
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            flash[:notice] = "Student is Updated"
            redirect_to student_path(@student)
        else
            flash[:notice] = "Error"
            redirect_to new_student_path
        end
    end

    def show
        @student = Student.find(params[:id])
    end

    def index
        @student = Student.all
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        flash[:notice] = "Student Deleted"
        redirect_to students_path
    end

    private
    def student_params
        params.require(:student).permit(:name,:roll_num,:father)
    end


end