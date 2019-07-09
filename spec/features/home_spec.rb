require 'rails_helper'

RSpec.feature "Home Page", type: :feature do
	scenario "vistiing the home pace" do
		visit root_path
		expect(page).to have_content "Welcome to Full Join"
	end
end
