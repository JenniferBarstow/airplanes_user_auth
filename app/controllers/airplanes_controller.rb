class AirplanesController < ApplicationController

  def index
    @airplanes = Airplane.all
  end

  def new
    @airplane = Airplane.new
  end

  def show
    @airplane = Airplane.find(params[:id])
  end

  def edit
    @airplane= Airplane.find(params[:id])
  end

  def create
    airplane_params = params.require(:airplane).permit(
      :name,
      :pilot,
      )
    @airplane = Airplane.new(airplane_params)
    @airplane.save
    flash[:notice] = "Airplane successfully added"
    redirect_to airplanes_path
  end

  def update
    @airplane = Airplane.find(params[:id])
    airplane_params = params.require(:airplane).permit(
      :name,
      :pilot,
    )
    @airplane.update(airplane_params)
    redirect_to airplanes_path
  end

  def destroy
    @airplane = Airplane.find(params[:id])
    @airplane.destroy(airplane_params)
    redirect_to airplanes_path
  end

end
