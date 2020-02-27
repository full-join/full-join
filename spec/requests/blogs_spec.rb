require 'rails_helper'

RSpec.describe "blogs", type: :request do
  describe "creating a post" do
    it "creates a post" do
      params = {blog:{title:"My Title",text:"My text"}}
      expect{post blogs_path, params: params}.to change{Blog.count}.by(1)
    end
  end

  describe "deleting a post" do
    context "without errors" do
      let(:blog) {Blog.create(title: "my title", text: "my text")}
      it "deletes a post" do
        blog
        expect{delete blog_path(blog)}.to change{Blog.count}.by(-1)
      end
    end
  end
end
