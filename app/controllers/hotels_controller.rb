class HotelsController < ApplicationController
before_action :find_hotel  

  def index
  	@hotel = Hotel.all
  end



  private
  def find_hotel
  	@hotel = Hotel.find(params [:id])
  end


  def hotel_params
  	params.require(:hotel).permit(:name)
  end
end
