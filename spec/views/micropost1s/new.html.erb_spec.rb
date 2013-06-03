require 'spec_helper'

describe "micropost1s/new" do
  before(:each) do
    assign(:micropost1, stub_model(Micropost1,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new micropost1 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => micropost1s_path, :method => "post" do
      assert_select "input#micropost1_content", :name => "micropost1[content]"
      assert_select "input#micropost1_user_id", :name => "micropost1[user_id]"
    end
  end
end
