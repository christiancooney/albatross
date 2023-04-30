class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ home destinations inspiration recipes merchandise]

  def home
    @articles = Article.all
    # @articles = Article.all.where.not(category: "Recipe")
    @countries = Country.all
  end

  def destinations
    @articles = Article.all.where.not(category: "Recipe")
    @countries = Country.all.order(:name)


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
