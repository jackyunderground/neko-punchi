require 'spec_helper'

describe "relations/index" do
  before(:each) do
    assign(:relations, [
      stub_model(Relation,
        :category => nil,
        :sub_category => nil
      ),
      stub_model(Relation,
        :category => nil,
        :sub_category => nil
      )
    ])
  end

  it "renders a list of relations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
