class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ home destinations inspiration recipes merchandise]

  def home
    @articles = Article.all
    # @articles = Article.all.where.not(category: "Recipe")
    @countries = Country.all
  end

  def destinations
    @articles = Article.all
    @countries = Country.all.order(:name)


  end

  def inspiration
  end

  def recipes
    @christian = Article.where(author: "Christian")

  end

  def merchandise
  end
end
