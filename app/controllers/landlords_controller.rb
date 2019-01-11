class LandlordsController < ApplicationController
 
def index
	 params["columns"] ||= { "0" => {"data" => "" } }
     params["length"]  ||= -1
    respond_to do |format|
        format.html 
    format.json { render json: LandlordDatatable.new(params) }
    

    end
end

  def show
  @landlord = Landlord.find(params[:id])
  end   
  

 
end
