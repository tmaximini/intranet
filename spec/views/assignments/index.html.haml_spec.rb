require 'spec_helper'

describe "assignments/index.html.haml" do
  before(:each) do
    assign(:assignments, [
      stub_model(Assignment,
        :profile_id => 1,
        :project_id => 1,
        :role => "Role"
      ),
      stub_model(Assignment,
        :profile_id => 1,
        :project_id => 1,
        :role => "Role"
      )
    ])
  end

  it "renders a list of assignments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
