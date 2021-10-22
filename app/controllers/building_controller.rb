class BuildingController < ApplicationController
  def index
        @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
    @apartments = Apartment.select('*').joins(:building).where("building_id = #{@building.id}")
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
    p @building
    render :json => @building
  end
  
  def delete
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to "/buildings/index"
  end
  
  def destroy
    
  end

  private
  def building_params
    return params.require(:building).permit(:id, :nombre_edificio, :direccion , :ciudad)
  end


end
