class RegionesController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  # GET /regiones
  # GET /regiones.json
  def index
    @regiones = Region.all
  end

  # GET /regiones/1
  # GET /regiones/1.json
  def show
  end

  # GET /regiones/new
  def new
    @region = Region.new
  end

  # GET /regiones/1/edit
  def edit
  end

  # POST /regiones
  # POST /regiones.json
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, notice: 'Region was successfully created.' }
        format.json { render :show, status: :created, location: @region }
      else
        format.html { render :new }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regiones/1
  # PATCH/PUT /regiones/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to @region, notice: 'Region was successfully updated.' }
        format.json { render :show, status: :ok, location: @region }
      else
        format.html { render :edit }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regiones/1
  # DELETE /regiones/1.json
  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to regiones_url, notice: 'Region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def asociations
    region = params[:region_id]
    @region_object = Region.find(params[:region_id])
    @asociations = Asociation.where(region_id: region)
    #binding.pry
  end

  def create_asociations
    @region = params[:region_id]
    @region_object = Region.find(params[:region_id])
    @asociations = Asociation.new
    #@listar_municipios = Municipio.all
  end

  def send_asociation
    binding.pry
    perro
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:codigo, :nombre)
    end
end
