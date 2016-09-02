require 'spec_helper'

feature "Contact Creation" do
  scenario "allows acees to contact page" do
    visit '/contacts'
    expect(page).to have_content 'Contact as'
  end
end
