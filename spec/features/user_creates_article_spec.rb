require 'spec_helper'


feature "Article Creation" do

  before(:each) do
    sign_up_helper

  end

    scenario "allows user to visit to article page" do
      visit new_article_path

      expect(page).to have_content I18n.t('articles.articles_new')
    end

    scenario "allows user to visit to created article page" do
      visit new_article_path


      fill_in :article_title, :with => 'test_title'
      fill_in :article_text, :with => 'example_text'
      click_button 'Save Article'

      expect(page).to have_content 'example_text'
    end


end
