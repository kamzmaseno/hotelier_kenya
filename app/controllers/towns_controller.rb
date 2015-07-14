class TownsController < ApplicationController
  def index
   @town = Town.all
  end

  def show
  	
  end

  def new
  	
  end

  private


  def towns_params
  	params.require(:towns).permit(:id, :name, 
      hotels_attributes:
  		 [:id, :name])
end
end