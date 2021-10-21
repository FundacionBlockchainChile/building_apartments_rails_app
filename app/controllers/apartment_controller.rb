class ApartmentController < ApplicationController
  def index
     @apartment = Apartment.all
  end

  def show
  end

  def new
    @apartment = Apartment.new
  end

  def create
    p apartment_params()
    @apartment = Apartment.new(apartment_params())
    if @apartment.save
      p 'Apartment saved!!'
      redirect_to(apartment_index_path)
    else
      p 'Apartment not saved!!'
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
  def apartment_params
    params.require(:apartment).permit(:numero_depto, :building_id)
  end
end