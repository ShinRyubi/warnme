class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  
  def index
    @incidents = Incident.all
  end

  def show
    
    @map_hash = Gmaps4rails.build_markers(@incident) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
    

  end


  def new
    @incident = Incident.new
  end


  def edit
  end

  def create
    @incident = Incident.new(incident_params)

    respond_to do |format|
      if @incident.save
        format.html { redirect_to @incident, notice: 'Incident was successfully created.' }
        format.json { render :show, status: :created, location: @incident }
      else
        format.html { render :new }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end


  
  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to @incident, notice: 'Incident was successfully updated.' }
        format.json { render :show, status: :ok, location: @incident }
      else
        format.html { render :edit }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @incident.destroy
    respond_to do |format|
      format.html { redirect_to incidents_url, notice: 'Incident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_incident
      @incident = Incident.find(params[:id])
    end


    def incident_params
      params.require(:incident).permit(:name, :address, :city, :items, images: [])
    end
end
