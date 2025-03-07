class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ show index print ]
  before_action :set_article, only: %i[ print show edit update destroy ]
  before_action :set_countries
  before_action :set_locations


  # GET /articles or /articles.json
  def index
    @pagy, @articles = pagy(Article.all)
  end

  # GET /articles/1 or /articles/1.json
  def show
   if @article.country_id.present?
    @location_name = Location.find(@article.location_id)
    @country_name = Country.find(@article.country_id)
   end
  end

  def time_conversion(time)
    if @article.prep_time.present?
      @total_time = @article.prep_time + @article.cooking_time
      if time < 60
        "#{time} mins"
      else
        hours = time / 60
        minutes = time % 60
        "#{hours}h #{minutes} mins"
      end
    end
  end
  helper_method :time_conversion

  # GET /articles/new
  def new
    @article = Article.new
  end

  def newrecipe
    @article = Article.new
  end

  def print
  end


  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)
    # if @article.location_id == nil
    #   then @article.location_id = 0
    # end
    # if @article.country_id == nil
    #   then @article.country_id = 0
    # end

    respond_to do |format|
      if @article.save
        format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    def set_countries
      @countries = Country.all
    end
    def set_locations
      @locations = Location.all
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(
        :title, :country, :city, :latitude, :longitude, :author, :date,
        :text1, :text2, :text3, :text4, :text5, :text6, :text7, :text8,
        :text9, :text10, :text11, :text12, :text13, :text14, :text15,
        :text16, :text17, :text18, :text19, :text20, :text21, :text22,
        :text23, :text24, :text25, :text26, :text27, :text28, :text29,
        :text30, :imagecover, :image1, :image2, :image3, :image4, :image5, :image6,
        :image7, :image8, :image9, :image10, :image11, :image12, :image13,
        :image14, :image15, :image16, :image17, :image18, :image19,
        :image20, :image21, :image22, :image23, :image24, :image25,
        :image26, :image27, :image28, :image29, :image30, :country_id,
        :location_id, :category, :subcategory, :feature, :cuisine,
        :recipe_title1, :recipe_list1, :recipe_title2, :recipe_list2,
        :recipe_title3, :recipe_list3, :recipe_title4, :recipe_list4,
        :recipe_title5, :recipe_list5, :recipe_title6, :recipe_list6,
        :method1, :method2, :method3, :method4, :method5, :method6, :method7,
        :method8, :method9, :method10, :price, :atmosphere, :drinks, :food,
        :service, :value, :recipe_tags, :dietary_tags, :holiday_tags, :travel_tags, :vegan, :vegetarian,
        :gluten_free, :dairy_free, :nut_free, :seafood, :alcohol,
        :alcohol_free, :city_break, :active_holiday, :beach_holiday,
        :adventure_holiday, :multi_destination_holiday, :summary,
        :website, :address, :servings, :prep_time, :cooking_time, :difficulty,
        drink_markers: [],
        subfeature: [],
        dietary_markers: [],
        sweet_markers: [],
        dietary_tags: [],
        holiday_tags: []
      )
    end
end
