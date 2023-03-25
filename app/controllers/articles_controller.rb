class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]
  before_action :set_countries
  before_action :set_locations


  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

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
        :image26, :image27, :image28, :image29, :image30, :country_id, :location_id
      )
    end
end
