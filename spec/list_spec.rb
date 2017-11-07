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

    it "should be possible to put many objects into the list" do
      list = List.new()
      list.addAll([1,2,4,8])
    end

  end   

end
