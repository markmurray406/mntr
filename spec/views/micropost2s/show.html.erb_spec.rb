require 'spec_helper'

describe "micropost2s/show" do
  before(:each) do
    @micropost2 = assign(:micropost2, stub_model(Micropost2,
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
