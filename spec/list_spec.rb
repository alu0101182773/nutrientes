require 'spec_helper'
require 'nutrientes'

RSpec.describe List do

  context "Basic List" do

    it "can create a new list" do

      list = List.new()

    end

    it "can put an Element into the list" do
      list = List.new()
      list.add(42)
    end

  end   

end
