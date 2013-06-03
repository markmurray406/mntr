require 'spec_helper'

describe "micropost2s/index" do
  before(:each) do
    assign(:micropost2s, [
      stub_model(Micropost2,
        :content => "Content",
        :user_id => 1
      ),
      stub_model(Micropost2,
        :content => "Content",
        :user_id => 1
      )
    ])
  end

  it "renders a list of micropost2s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
