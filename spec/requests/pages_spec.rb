require 'rails_helper'

RSpec.describe "pages page", type: :request do
  describe "GET /" do
    it "renders the pages page" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end

  describe "about page" do
    it "renders the about page" do
      get about_path
      expect(response).to have_http_status(200)
    end
  end
end
