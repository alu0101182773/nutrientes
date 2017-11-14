require "spec_helper"
require "nutrientes"

RSpec.describe Alimento do

  before :each do
    @choco = Alimento.new("Chocolate", 5.3, 47.0, 30.0)
    @huevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
    @cerdo = Alimento.new("Cerdo", 21.5, 0.0, 6.3)
  end

  describe "formal requisites" do
    
    it "has a version number" do
      expect(Nutrientes::VERSION).not_to be nil
    end

  end

  describe "basic properties of a food" do

    it "has the property nombre" do
      expect(@choco.instance_variable_defined?("@nombre")).to eq(true)
    end

    it "has the property proteinas" do
      expect(@choco.instance_variable_defined?("@proteinas")).to eq(true)
    end
    
    it "has the property glucidos" do
      expect(@choco.instance_variable_defined?("@glucidos")).to eq(true)
    end

    it "has the property grasas" do
      expect(@choco.instance_variable_defined?("@grasas")).to eq(true)
    end

  end

  describe "Getter methods for each instance variable" do

    it "has a method to get the name" do
      expect(@choco.nombre).to eq("Chocolate")
    end

    it "has a method to get the percentage of proteins" do
      expect(@choco.proteinas).to eq(5.3)
    end

    it "has a method to get the percentage of carbohydrates" do
      expect(@choco.glucidos).to eq(47.0)
    end

    it "has a method to get the percentage of fat" do
      expect(@choco.grasas).to eq(30.0)
    end

  end

  describe "Format of output" do
    
    it "should exist a nice to-String-Method" do
      expect(@choco.to_s).to eq("Chocolate:\nProteínas:\t 5.3 gramos\nGlúcidos:\t 47.0 gramos\nLípidos:\t 30.0 gramos\n\t\t por 100 gramos")
    end

  end

  describe "Calculating methods" do
   
    it "should exist a method to calculate the energetic value" do
      expect(@choco.valorEnergetico(100)).to eq(479.2)
    end
  end

  describe "Testing Comparable" do
    it "should include the mixin Comparable" do
      expect(Alimento.include?(Comparable)).to eq(true)
    end

    it "should give the right result when comparing two foods" do
      expect(@choco > @cerdo).to eq(true)
      expect(@huevoFrito.between?(@cerdo, @choco)).to eq(true)
      expect(@cerdo == @cerdo).to eq(true)
      expect(@cerdo >= @huevoFrito).to eq(false)
      hi = "Hi!"
      expect(@choco <=> hi).to eq(nil)
    end
  end
end
