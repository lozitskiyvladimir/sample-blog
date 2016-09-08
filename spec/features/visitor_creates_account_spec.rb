require 'spec_helper'

feature "Account Creation" do
  scenario "allows a guest to create account" do

      sign_up_helper
      expect(page).to have_content I18n.t ('devise.registrations.signed_up')
  end
end
