class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ show index ]

  before_action :set_location, only: %i[ show edit update destroy ]
  before_action :set_countries
  before_action :set_articles

  # GET /locations or /locations.json
  def index
    @locations = Location.all.order(:name)
  end

  # GET /locations/1 or /locations/1.json
  def show
    if params["search"].present?
      @pagy, @locationfilter = pagy(Article.where(location_id:(params[:id])).location_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @locationfilter = pagy(Article.where(location_id:(params[:id])).location_search(params[:filter]))
    else
      @pagy, @locationfilter = pagy(@location.articles)
    end
end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations or /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to location_url(@location), notice: "Location was successfully created." }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1 or /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to location_url(@location), notice: "Location was successfully updated." }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1 or /locations/1.json
  def destroy
    @location.destroy

    respond_to do |format|
      format.html { redirect_to locations_url, notice: "Location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    def set_countries
      @countries = Country.all.order(:name)
    end

    def set_articles
      @articles = Article.all
    end

    # Only allow a list of trusted parameters through.
    def location_params
      params.require(:location).permit(:name, :country_id)
    end
end
