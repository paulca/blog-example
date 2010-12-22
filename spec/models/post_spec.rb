require 'spec_helper'

describe Post do
  describe "#title_lower" do
    it "should make the title lowercase" do
      Post.new(:title => "Hello").title_lower.should == "hello"
    end
  end
end
