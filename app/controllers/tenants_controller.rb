class TenantsController < ApplicationController
  def index
     params["columns"] ||= { "0" => {"data" => "" } }
     params["length"]  ||= -1
      respond_to do |format|
    format.html
    format.json { render json: TenantDatatable.new(params) }
  end
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
