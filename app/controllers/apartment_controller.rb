class ApartmentController < ApplicationController
  def index
     @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.where(building_id: @building.id)
  end

  def new
    @apartment = Apartment.new
    @buildings = Building.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def create
    p apartment_params()
    @apartment = Apartment.new(apartment_params())
    if @apartment.save
      p 'Apartment saved!!'
      redirect_to(apartments_index_path)
    else
      p 'Apartment not saved!!'
      render("new")
    end
  end

  def update
  end
  
  def edit
     @apartment = Apartment.find(params[:id])
  end
  
  def delete
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect_to "/apartments/index"
  end
 
  private
  def apartment_params
    params.require(:apartment).permit(:numero_depto, :building_id)
  end
end
