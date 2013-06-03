require 'spec_helper'

describe "micropost2s/edit" do
  before(:each) do
    @micropost2 = assign(:micropost2, stub_model(Micropost2,
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit micropost2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => micropost2s_path(@micropost2), :method => "post" do
      assert_select "input#micropost2_content", :name => "micropost2[content]"
      assert_select "input#micropost2_user_id", :name => "micropost2[user_id]"
    end
  end
end
