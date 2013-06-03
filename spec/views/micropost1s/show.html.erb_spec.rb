require 'spec_helper'

describe "micropost1s/show" do
  before(:each) do
    @micropost1 = assign(:micropost1, stub_model(Micropost1,
      :content => "Content",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
