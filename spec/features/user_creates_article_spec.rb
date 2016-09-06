require 'spec_helper'
# require 'database_cleaner'

feature "Article Creation" do
  before(:all) do
    sign_up_1
  end

    scenario "allows user to visit to article page" do
      visit new_article_path

      expect(page).to have_content I18n.t('articles.articles_new')
    end
end
