require 'spec_helper'

describe "cell_phones/index.html.erb" do
  before(:each) do
    assign(:cell_phones, [
      stub_model(CellPhone,
        :title => "Title",
        :description => "MyText",
        :in_stock => false
      ),
      stub_model(CellPhone,
        :title => "Title",
        :description => "MyText",
        :in_stock => false
      )
    ])
  end

  it "renders a list of cell_phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
