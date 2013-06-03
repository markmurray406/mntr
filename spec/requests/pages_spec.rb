require 'spec_helper'

describe "pages" do

  describe "home page" do
    it "should have the content 'The knowledge exchange site!'" do
      visit 'home'
      page.should have_content('The knowledge exchange site')
    end
  end
end
