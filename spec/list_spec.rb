require 'spec_helper'
require 'nutrientes'

RSpec.describe List do

  context "Basic List" do

    it "can create an empty list" do

      list = List.new()

    end

    it "can put an Element into the list" do
      list = List.new()
      list.add(42)
    end

    it "should exist a Node with the value" do
      list = List.new()
      list.add(42)
      expect(list.getNode()).to eq(Struct::Node.new(42, nil, nil))
    end

  end   

end
