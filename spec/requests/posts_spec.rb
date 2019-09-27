require 'rails_helper'

RSpec.describe "posts", type: :request do
  describe "creating a post" do
    it "creates a post" do
      params = {post:{title:"My Title",text:"My text"}}
      expect{post posts_path, params: params}.to change{Post.count}.by(1)
    end
  end

  describe "deleting a post" do
    context "without errors" do
      let(:post) {Post.create(title: "my title", text: "my text")}
      it "deletes a post" do
        post
        expect{delete post_path(post)}.to change{Post.count}.by(-1)
      end
    end
  end
end
