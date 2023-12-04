class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]

  def index
    @q = Student.ransack(params[:q])
    @students = @q.result.order(:id).page(params[:page]).per(params[:no_of_elements])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_param)
    if @student.save
      redirect_to students_path, notice: 'Student has been created successfully'
    else
      render :new, status: 404
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_param)
      redirect_to student_path(@student), notice: 'Student has been updated successfully'
    else
      render :edit, status: 404
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path, status: :see_other, notice: 'Student has been deleted successfully'
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end
  def student_param
    params.require(:student).permit(:first_name, :last_name, :email, :address, :contact ,:date_of_birth)
  end
end
