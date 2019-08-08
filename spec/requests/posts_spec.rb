require 'rails_helper'

RSpec.describe "posts", type: :request do
  

  describe "creating a post" do
    it "creates a post" do
      expect{post posts_path}.to change{Post.count}.by(1)
      
    end
  end
end
