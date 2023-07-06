class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ home travel recipes about starters mains sweets drinks snacks]

  def home
    @articles = Article.all
    # @articles = Article.all.where.not(category: "Recipe")
    @countries = Country.all

    if params["search"].present?
      @articles = Article.global_search(params['search']["query"])
    end

  end

  def travel
    @articles = Article.all.where.not(category: "Recipe")
    @countries = Country.all.order(:name)
    if params["search"].present?
      @articles = Article.all.where.not(category: "Recipe").travel_search(params['search']["query"])
    elsif params[:filter].present?
      @articles = Article.all.where.not(category: "Recipe").travel_search(params[:filter])
  end
  if turbo_frame_request?
    render partial: "destination", locals: { destination: @articles }
  else
     render :travel

  end

end


  def about
  end

  def admin
  end

  def inspiration
  end

  def recipes
    @recipes = Article.where(category: "Recipe")

    if params["search"].present?
      @recipes = Article.where(category: "Recipe").recipe_search(params['search']["query"])
    elsif params[:filter].present?
      @recipes = Article.where(category: "Recipe").recipe_search(params[:filter])
    elsif params[:dietary_filter].present?
      @recipes = Article.where(category: "Recipe").dietary_search(params[:dietary_filter])
  end
  end

  def starters
    @starters = Article.where(subcategory: "Starters")
    if params["search"].present?
      @starters = Article.where(subcategory: "Starters").drink_search(params['search']["query"])
    elsif params[:filter].present?
      @starters = Article.where(subcategory: "Starters").drink_search(params[:filter])
    end
  end

  def mains
    @mains = Article.where(subcategory: "Mains")
    if params["search"].present?
      @mains = Article.where(subcategory: "Mains").drink_search(params['search']["query"])
    elsif params[:filter].present?
      @mains = Article.where(subcategory: "Mains").drink_search(params[:filter])
    end
  end
  def sweets
    @sweets = Article.where(subcategory: "Sweets")
    if params["search"].present?
      @sweets = Article.where(subcategory: "Sweets").drink_search(params['search']["query"])
    elsif params[:filter].present?
      @sweets = Article.where(subcategory: "Sweets").drink_search(params[:filter])
    end
  end
  def drinks
    @drinks = Article.where(subcategory: "Drinks")
    if params["search"].present?
      @drinks = Article.where(subcategory: "Drinks").drink_search(params['search']["query"])
    elsif params[:filter].present?
      @drinks = Article.where(subcategory: "Drinks").drink_search(params[:filter])
    end
  end
  def snacks
    @snacks = Article.where(subcategory: "Snacks")
    if params["search"].present?
      @snacks = Article.where(subcategory: "Snacks").drink_search(params['search']["query"])
    elsif params[:filter].present?
      @snacks = Article.where(subcategory: "Snacks").drink_search(params[:filter])
    end
  end
  def sides
    @sides = Article.where(subcategory: "Sides")
    if params["search"].present?
      @sides = Article.where(subcategory: "Sides").drink_search(params['search']["query"])
    elsif params[:filter].present?
      @sides = Article.where(subcategory: "Sides").drink_search(params[:filter])
    end
  end


  def merchandise
  end
end
