class CountriesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ show index ]
  before_action :set_country, only: %i[ show edit update destroy ]
  before_action :set_articles, only: %i[ show edit update destroy ]
  before_action :set_locations, only: %i[ show edit update destroy ]

  # GET /countries or /countries.json
  def index
    @countries = Country.all
  end

  # GET /countries/1 or /countries/1.json
  def show
    if params["search"].present?
      @art = Article.where(country_id:(params[:id])).country_search(params['search']["query"])
    elsif params[:filter].present?
      @art = Article.where(country_id:(params[:id])).country_search(params[:filter])
    else
      @art = Article.where(country_id:(params[:id]))

    end

  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries or /countries.json
  def create
    @country = Country.new(country_params)

    respond_to do |format|
      if @country.save
        format.html { redirect_to country_url(@country), notice: "Country was successfully created." }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1 or /countries/1.json
  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to country_url(@country), notice: "Country was successfully updated." }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1 or /countries/1.json
  def destroy
    @country.destroy

    respond_to do |format|
      format.html { redirect_to countries_url, notice: "Country was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    def set_articles
      @articles = Article.all

    end



    def set_locations
      @locations = Location.all

    end

    # Only allow a list of trusted parameters through.
    def country_params
      params.require(:country).permit(:name, :article_id, :location_id)
    end
end
