class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ home travel recipes about starters mains sweets drinks sides snacks brunch ]

  def home
    # @articles = Article.all.where.not(category: "Recipe")
    @countries = Country.all
    if params["search"].present?
      @pagy, @articles = pagy(Article.global_search(params['search']["query"]))
    else
      @pagy, @articles = pagy(Article.all)
    end

  end

  def travel
    @pagy, @articles = pagy(Article.all.where.not(category: "Recipe"))
    @countries = Country.all.order(:name)
    if params["search"].present?
      @pagy,  @articles = pagy(Article.all.where.not(category: "Recipe").travel_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy,  @articles = pagy(Article.all.where.not(category: "Recipe").travel_type_search(params[:filter]))
    end
  end


  def about
  end

  def admin
  end

  def inspiration
  end

  def recipes
    @pagy, @recipes = pagy(Article.where(category: "Recipe"))
    if params["search"].present?
      @pagy, @recipes = pagy(Article.where(category: "Recipe").recipe_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @recipes = pagy(Article.where(category: "Recipe").recipe_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @recipes = pagy(Article.where(category: "Recipe").dietary_search(params[:dietary_filter]))
    elsif params[:cuisine_filter].present?
      @pagy, @recipes = pagy(Article.where(category: "Recipe").cuisine_search(params[:cuisine_filter]))
    # elsif params[:vegetarian_filter].present?
    #   @recipes = Article.where(category: "Recipe").dietary_search(params[:vegetarian_filter])
    # elsif params[:vegan_filter].present?
    #   @recipes = Article.where(category: "Recipe").dietary_search(params[:vegan_filter])
    # elsif params[:gluten_filter].present?
    #   @recipes = Article.where(category: "Recipe").dietary_search(params[:gluten_filter])
    # elsif params[:nut_filter].present?
    #   @recipes = Article.where(category: "Recipe").dietary_search(params[:nut_filter])
    # elsif params[:pesca_filter].present?
    #   @recipes = Article.where(category: "Recipe").dietary_search(params[:pesca_filter])
    # elsif params[:alcohol_filter].present?
    #   @recipes = Article.where(category: "Recipe").dietary_search(params[:alcohol_filter])
    # elsif params[:alcoholfree_filter].present?
    #   @recipes = Article.where(category: "Recipe").dietary_search(params[:alcoholfree_filter])
  end
  end

  def brunch
    @pagy, @brunch = pagy(Article.where(subcategory: "Brunch"))
    if params["search"].present?
      @pagy, @brunch = pagy(Article.where(subcategory: "Brunch").recipe_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @brunch = pagy(Article.where(subcategory: "Brunch").recipe_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @brunch = pagy(Article.where(subcategory: "Brunch").dietary_search(params[:dietary_filter]))
    elsif params[:cuisine_filter].present?
      @pagy, @brunch = pagy(Article.where(subcategory: "Brunch").cuisine_search(params[:cuisine_filter]))
    end
  end

  def starters
    @pagy, @starters = pagy(Article.where(subcategory: "Starters"))
    if params["search"].present?
      @pagy, @starters = pagy(Article.where(subcategory: "Starters").recipe_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @starters = pagy(Article.where(subcategory: "Starters").recipe_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @starters = pagy(Article.where(subcategory: "Starters").dietary_search(params[:dietary_filter]))
    elsif params[:cuisine_filter].present?
      @pagy, @starters = pagy(Article.where(subcategory: "Starters").cuisine_search(params[:cuisine_filter]))
    end
  end

  def mains
    @pagy, @mains = pagy(Article.where(subcategory: "Mains"))
    if params["search"].present?
      @pagy, @mains = pagy(Article.where(subcategory: "Mains").recipe_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @mains = pagy(Article.where(subcategory: "Mains").recipe_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @mains = pagy(Article.where(subcategory: "Mains").dietary_search(params[:dietary_filter]))
    elsif params[:cuisine_filter].present?
      @pagy, @mains = pagy(Article.where(subcategory: "Mains").cuisine_search(params[:cuisine_filter]))
    end
  end
  def sweets
    @pagy, @sweets = pagy(Article.where(subcategory: "Sweets"))
    if params["search"].present?
      @pagy, @sweets = pagy(Article.where(subcategory: "Sweets").sweets_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @sweets = pagy(Article.where(subcategory: "Sweets").sweets_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @sweets = pagy(Article.where(subcategory: "Sweets").dietary_search(params[:dietary_filter]))
    elsif params[:cuisine_filter].present?
      @pagy, @sweets = pagy(Article.where(subcategory: "Sweets").cuisine_search(params[:cuisine_filter]))
    end
  end
  def drinks
    @pagy, @drinks = pagy(Article.where(subcategory: "Drinks"))
    if params["search"].present?
      @pagy, @drinks = pagy(Article.where(subcategory: "Drinks").drink_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @drinks = pagy(Article.where(subcategory: "Drinks").drink_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @drinks = pagy(Article.where(subcategory: "Drinks").dietary_search(params[:dietary_filter]))
    end
  end
  def snacks
    @pagy, @snacks = pagy(Article.where(subcategory: "Snacks"))
    if params["search"].present?
      @pagy, @snacks = pagy(Article.where(subcategory: "Snacks").recipe_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @snacks = pagy(Article.where(subcategory: "Snacks").recipe_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @snacks = pagy(Article.where(subcategory: "Snacks").dietary_search(params[:dietary_filter]))
    elsif params[:cuisine_filter].present?
      @pagy, @snacks = pagy(Article.where(subcategory: "Snacks").cuisine_search(params[:cuisine_filter]))
    end
  end

  def sides
    @pagy, @sides = pagy(Article.where(subcategory: "Sides"))
    if params["search"].present?
      @pagy, @sides = pagy(Article.where(subcategory: "Sides").recipe_search(params['search']["query"]))
    elsif params[:filter].present?
      @pagy, @sides = pagy(Article.where(subcategory: "Sides").recipe_search(params[:filter]))
    elsif params[:dietary_filter].present?
      @pagy, @sides = pagy(Article.where(subcategory: "Sides").dietary_search(params[:dietary_filter]))
    elsif params[:cuisine_filter].present?
      @pagy, @sides = pagy(Article.where(subcategory: "Sides").cuisine_search(params[:cuisine_filter]))
    end
  end


  def merchandise
  end
end
