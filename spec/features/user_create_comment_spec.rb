require 'spec_helper'

feature 'Creation comment' do

  before (:each) do
    sign_up_visitor
  end
    scenario 'allows user create comment' do

      create_article
      # fill form
      fill_in :comment_body, :with => 'something'
      # submit form
      click_button 'Create Comment'
      # get needed page
      expect(page).to have_content "said: something"
      # check page word
    end

end
