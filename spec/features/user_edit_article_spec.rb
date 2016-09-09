require 'spec_helper'

feature 'Article Edition' do
    #log in vizitor
    before (:each) do
      sign_up_visitor
    end

  scenario 'allow user edit article' do
    #create article
    create_article
    #vizit to article_edit_path
    # vizit edit_article_path      # Error is here!
    visit '/articles/1/edit'
    #fill form
    fill_in :article_title, :with => 'test_title_edition'
    fill_in :article_text, :with => 'example_text_edition'
    #submit form
    click_button 'Save Article'
    #check page with changing
    expect(page).to have_content 'example_text_edition'

  end

end
