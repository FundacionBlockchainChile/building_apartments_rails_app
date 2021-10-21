class BuildingController < ApplicationController
  def index
        @buildings = Building.all
  end

  def show
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params())
    if @building.save
      redirect_to(building_index_path)
    else
      render("new")
    end
  end

  def update
  end
  
  def edit
  end
  
  def delete
  end
  
  def destroy
  end

  private
  def building_params
    params.require(:building).permit(:nombre_edificio, :direccion , :ciudad)
  end
end
