require 'spec_helper'

describe "Micropost2s" do
  describe "GET /micropost2s" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get micropost2s_path
      response.status.should be(200)
    end
  end
end
