require 'spec_helper'

describe "cell_phones/show.html.erb" do
  before(:each) do
    @cell_phone = assign(:cell_phone, stub_model(CellPhone,
      :title => "Title",
      :description => "MyText",
      :in_stock => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
