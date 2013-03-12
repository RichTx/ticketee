require 'spec_helper'

feature 'Signing up' do
  scenario 'Succesful sign up' do
    visit '/'
    click_link "Sign up"
    fill_in "Email", :with => "user@ticketee.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirm", :with => "password"
    click_button "Sign up"
    page.should have_content("You have signed up successfully.")
  end
end
