class StudentsController < ApplicationController
	
	def new
		@student = Student.new
	end
	
	def create
    # binding.pry
    @student = Student.new(params[:student])
    if @student.save
      redirect_to students_path
    else
      redirect_to :back
    end
	end

  def index
    @students = Student.all
  end


end
