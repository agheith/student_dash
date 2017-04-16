class DojosController < ApplicationController
  def index
      @dojos = Dojo.all
    #   render json: @dojos
  end

  def edit
      @dojo = Dojo.find(params[:id])
    #   render json: @dojo
  end

  def show
    #   render json: params
    @dojo = Dojo.find(params[:id])
    # render json: @dojo
    @students = @dojo.students

    # render json: students
  end

  def new
  end

  def destroy
    #   render json: params
    Dojo.find(params[:id]).destroy
    redirect_to '/dojos'
  end

  def create
    #   render json: params --> take this data to create it
    Dojo.create(dojo_params) #pass in the funtion
    redirect_to '/dojos'
  end

  def update
      Dojo.find(params[:id]).update(dojo_params)
      redirect_to '/dojos'
  end


  private

  def dojo_params
      params.require(:dojo).permit(:branch, :city, :state) #whitelist specific params
  end

end
