require 'spec_helper'

describe "cell_phones/new.html.erb" do
  before(:each) do
    assign(:cell_phone, stub_model(CellPhone,
      :title => "MyString",
      :description => "MyText",
      :in_stock => false
    ).as_new_record)
  end

  it "renders new cell_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cell_phones_path, :method => "post" do
      assert_select "input#cell_phone_title", :name => "cell_phone[title]"
      assert_select "textarea#cell_phone_description", :name => "cell_phone[description]"
      assert_select "input#cell_phone_in_stock", :name => "cell_phone[in_stock]"
    end
  end
end
