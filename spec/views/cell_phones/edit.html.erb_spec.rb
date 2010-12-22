require 'spec_helper'

describe "cell_phones/edit.html.erb" do
  before(:each) do
    @cell_phone = assign(:cell_phone, stub_model(CellPhone,
      :title => "MyString",
      :description => "MyText",
      :in_stock => false
    ))
  end

  it "renders the edit cell_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cell_phone_path(@cell_phone), :method => "post" do
      assert_select "input#cell_phone_title", :name => "cell_phone[title]"
      assert_select "textarea#cell_phone_description", :name => "cell_phone[description]"
      assert_select "input#cell_phone_in_stock", :name => "cell_phone[in_stock]"
    end
  end
end
