class StudentsController < ApplicationController
  def show
      @student = Student.with_dojo(params[:id])
      #access the method we created..
    #   render json: @student
    @cohort_mates = Student.cohort(@student)
    # render json: @students
  end

  def edit
      @student = Student.find(params[:id])
      @other_dojos = Dojo.where.not(id: @student.dojo.id)
  end

  def new
    #   render text: "made it to the new method"
    @dojo = Dojo.find(params[:dojo_id])
    @other_dojos = Dojo.where.not(id: params[:dojo_id])
  end

  def create
    #   render json: params
    Student.create(student_params)
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  def update
    #   render json: params
    Student.find(params[:id]).update(student_params)
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  def destroy
      Student.find(params[:id]).destroy
      redirect_to "/dojos/#{params[:dojo_id]}"
  end

  private

  def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
  end


end
