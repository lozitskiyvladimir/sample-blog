def sign_up_visitor
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'mike'
    fill_in :user_password, :with => 'secure123!@#'
    fill_in :user_password_confirmation, :with => 'secure123!@#'

    click_button 'Sign up'
end

def create_article

  visit new_article_path


  fill_in :article_title, :with => 'test_title'
  fill_in :article_text, :with => 'example_text'
  click_button 'Save Article'

  

end
