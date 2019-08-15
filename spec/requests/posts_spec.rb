require 'rails_helper'

RSpec.describe "posts", type: :request do
  

  describe "creating a post" do
    it "creates a post" do
      params = {post:{title:"My Title",text:"My text"}}
      expect{post posts_path, params: params}.to change{Post.count}.by(1)
      
    end
  end
end
