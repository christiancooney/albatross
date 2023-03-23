require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "should create article" do
    visit articles_url
    click_on "New article"

    fill_in "Author", with: @article.author
    fill_in "City", with: @article.city
    fill_in "Country", with: @article.country
    fill_in "Latitude", with: @article.latitude
    fill_in "Longitude", with: @article.longitude
    fill_in "Text1", with: @article.text1
    fill_in "Text10", with: @article.text10
    fill_in "Text11", with: @article.text11
    fill_in "Text12", with: @article.text12
    fill_in "Text13", with: @article.text13
    fill_in "Text14", with: @article.text14
    fill_in "Text15", with: @article.text15
    fill_in "Text16", with: @article.text16
    fill_in "Text17", with: @article.text17
    fill_in "Text18", with: @article.text18
    fill_in "Text19", with: @article.text19
    fill_in "Text2", with: @article.text2
    fill_in "Text20", with: @article.text20
    fill_in "Text21", with: @article.text21
    fill_in "Text22", with: @article.text22
    fill_in "Text23", with: @article.text23
    fill_in "Text24", with: @article.text24
    fill_in "Text25", with: @article.text25
    fill_in "Text26", with: @article.text26
    fill_in "Text27", with: @article.text27
    fill_in "Text28", with: @article.text28
    fill_in "Text29", with: @article.text29
    fill_in "Text3", with: @article.text3
    fill_in "Text30", with: @article.text30
    fill_in "Text4", with: @article.text4
    fill_in "Text5", with: @article.text5
    fill_in "Text6", with: @article.text6
    fill_in "Text7", with: @article.text7
    fill_in "Text8", with: @article.text8
    fill_in "Text9", with: @article.text9
    fill_in "Title", with: @article.title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit article_url(@article)
    click_on "Edit this article", match: :first

    fill_in "Author", with: @article.author
    fill_in "City", with: @article.city
    fill_in "Country", with: @article.country
    fill_in "Latitude", with: @article.latitude
    fill_in "Longitude", with: @article.longitude
    fill_in "Text1", with: @article.text1
    fill_in "Text10", with: @article.text10
    fill_in "Text11", with: @article.text11
    fill_in "Text12", with: @article.text12
    fill_in "Text13", with: @article.text13
    fill_in "Text14", with: @article.text14
    fill_in "Text15", with: @article.text15
    fill_in "Text16", with: @article.text16
    fill_in "Text17", with: @article.text17
    fill_in "Text18", with: @article.text18
    fill_in "Text19", with: @article.text19
    fill_in "Text2", with: @article.text2
    fill_in "Text20", with: @article.text20
    fill_in "Text21", with: @article.text21
    fill_in "Text22", with: @article.text22
    fill_in "Text23", with: @article.text23
    fill_in "Text24", with: @article.text24
    fill_in "Text25", with: @article.text25
    fill_in "Text26", with: @article.text26
    fill_in "Text27", with: @article.text27
    fill_in "Text28", with: @article.text28
    fill_in "Text29", with: @article.text29
    fill_in "Text3", with: @article.text3
    fill_in "Text30", with: @article.text30
    fill_in "Text4", with: @article.text4
    fill_in "Text5", with: @article.text5
    fill_in "Text6", with: @article.text6
    fill_in "Text7", with: @article.text7
    fill_in "Text8", with: @article.text8
    fill_in "Text9", with: @article.text9
    fill_in "Title", with: @article.title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit article_url(@article)
    click_on "Destroy this article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
