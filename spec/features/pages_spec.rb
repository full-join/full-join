require 'rails_helper'

RSpec.feature "Home Page", type: :feature do
  scenario "visting the pages page" do
    visit root_path
    expect(page).to have_content "Welcome to Full Join"
  end
end
