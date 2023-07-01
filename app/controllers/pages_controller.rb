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

  end

  def about
  end

  def admin
  end

  def inspiration
  end

  def recipes
    @recipes = Article.where(category: "Recipe")
  end

  def starters
    @starters = Article.where(subcategory: "Starters")
  end

  def mains
    @mains = Article.where(subcategory: "Mains")
  end
  def sweets
    @sweets = Article.where(subcategory: "Sweets")
  end
  def drinks
    @drinks = Article.where(subcategory: "Drinks")
  end
  def snacks
    @snacks = Article.where(subcategory: "Snacks")
  end

  def merchandise
  end
end
