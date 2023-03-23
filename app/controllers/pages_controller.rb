class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ home destinations inspiration recipes merchandise]

  def home
    @articles = Article.all
  end

  def destinations
    @articles = Article.all
  end

  def inspiration
  end

  def recipes
  end

  def merchandise
  end
end
