class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
  #   @student = Student.new
  # @student.first_name = params[:first_name]
  # @student.last_name = params[:last_name]
  # @student.save
  Post.create(first_name: params[:first_name], last_name: params[:last_name])
  redirect_to post_path(@student)
  end

end
