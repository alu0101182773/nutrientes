require "spec_helper"
require "nutrientes"

RSpec.describe Nutrientes do

  before :each do
    @choco = Alimento.new("Chocolate", 5.3, 47.0, 30.0)
  end

  describe "formal requisites" do
    
    it "has a version number" do
      expect(Nutrientes::VERSION).not_to be nil
    end

  end

  #describe "basic properties of a food" do

  #end
end
