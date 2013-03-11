require 'spec_helper'

feature "Deleting projects" do
  scenario "Deleting a project" do
    Factory(:project, :name => "TextMate 2")
    visit "/"
    click_link "TextMate 2"
    click_link "Delete Project"
    visit "/"
    page.should_not have_content("TextMate 2")
  end
end
