require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference("Article.count") do
      post articles_url, params: { article: { author: @article.author, city: @article.city, country: @article.country, latitude: @article.latitude, longitude: @article.longitude, text1: @article.text1, text10: @article.text10, text11: @article.text11, text12: @article.text12, text13: @article.text13, text14: @article.text14, text15: @article.text15, text16: @article.text16, text17: @article.text17, text18: @article.text18, text19: @article.text19, text2: @article.text2, text20: @article.text20, text21: @article.text21, text22: @article.text22, text23: @article.text23, text24: @article.text24, text25: @article.text25, text26: @article.text26, text27: @article.text27, text28: @article.text28, text29: @article.text29, text3: @article.text3, text30: @article.text30, text4: @article.text4, text5: @article.text5, text6: @article.text6, text7: @article.text7, text8: @article.text8, text9: @article.text9, title: @article.title } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { author: @article.author, city: @article.city, country: @article.country, latitude: @article.latitude, longitude: @article.longitude, text1: @article.text1, text10: @article.text10, text11: @article.text11, text12: @article.text12, text13: @article.text13, text14: @article.text14, text15: @article.text15, text16: @article.text16, text17: @article.text17, text18: @article.text18, text19: @article.text19, text2: @article.text2, text20: @article.text20, text21: @article.text21, text22: @article.text22, text23: @article.text23, text24: @article.text24, text25: @article.text25, text26: @article.text26, text27: @article.text27, text28: @article.text28, text29: @article.text29, text3: @article.text3, text30: @article.text30, text4: @article.text4, text5: @article.text5, text6: @article.text6, text7: @article.text7, text8: @article.text8, text9: @article.text9, title: @article.title } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference("Article.count", -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
