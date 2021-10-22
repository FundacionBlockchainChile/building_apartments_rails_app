class BuildingController < ApplicationController
  def index
        @buildings = Building.all
  end

  def show
    @building = Building.new(building_params())
    p @building
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params())
    if @building.save
      redirect_to(buildings_index_path)
    else
      render("new")
    end
  end

  def update
    @building = Building.find(params[:id])
    if @building.update(building_params())
      redirect_to(buildings_index)
    else
      render("edit")
    end
  end
  
  def edit
    @building = Building.new(building_params())
  end
  
  def delete
  end
  
  def destroy
    # @building = Building.find(params[:id])
    # @building.destroy
    # redirect_to(buildings_index)
  end

  private
  def building_params
    params.require(:building).permit(:nombre_edificio, :direccion , :ciudad)
  end


end
