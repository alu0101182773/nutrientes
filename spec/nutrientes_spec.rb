require "spec_helper"
require "nutrientes"

RSpec.describe Alimento do

  before :each do
    @choco = Alimento.new("Chocolate", 5.3, 47.0, 30.0)
    @manz = Alimento.new("Manzana", 0.3, 12.4, 0.4)
    @yogurt = Alimento.new("Yogurt", 3.8, 4.9, 3.8)
    @glucosa = Alimento.new("Glucosa", 0.0, 100.0, 0.0)
    @compManzInd1 = [6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9]
    @yogurtInd1 = [6.1, 6.6, 6.3, 6.3, 6.1, 6.9, 6.8, 6.5, 6.4, 6.9, 6.8, 6.5, 6.3, 6.2, 6.7, 6.2, 5.9, 5.8, 5.8, 5.8, 5.8, 5.8, 5.9, 6.2, 6.4]
    @chocoInd1 = [6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3, 6.2, 6.1, 5.9, 5.8, 6.1, 6.7, 6.7, 6.6, 6.7, 6.9, 7.2, 7.1]
    @glucosaInd1 = [4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1]
    @compManzInd2 = [4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9]
    @yogurtInd2 = [4.9, 4.9, 5.2, 5.8, 6.5, 7.0, 7.2, 7.3, 7.3, 6.6, 6.2, 6.1, 6.0, 6.1, 5.9, 5.9, 5.9, 5.9, 5.8, 5.8, 5.5, 5.5, 5.6, 5.9, 5.9]
    @chocoInd2 = [4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9]
    @glucosaInd2 = [6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8, 10.5, 9.1, 8.9, 8.3, 7.7, 7.6, 7.5]
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

  describe "Indice Glucemico" do

    it "should be possible to add measurements to a Food" do
      @manz.addMeasurement(@compManzInd1, @glucosaInd1)
      @manz.addMeasurement(@compManzInd2, @glucosaInd2)
      @choco.addMeasurement(@chocoInd1, @glucosaInd1)
      @choco.addMeasurement(@chocoInd2, @glucosaInd2)
      @yogurt.addMeasurement(@yogurtInd1, @glucosaInd1)
      @yogurt.addMeasurement(@yogurtInd2, @glucosaInd2)
    end

    it "should exist the method for calculating the Glucemic Index" do
      expect(Alimento.method_defined?(:indiceGlucemico)).to eq(true)
    end

    it "should give the expected result for each Food" do
      @manz.addMeasurement(@compManzInd1, @glucosaInd1)
      @manz.addMeasurement(@compManzInd2, @glucosaInd2)
      @choco.addMeasurement(@chocoInd1, @glucosaInd1)
      @choco.addMeasurement(@chocoInd2, @glucosaInd2)
      @yogurt.addMeasurement(@yogurtInd1, @glucosaInd1)
      @yogurt.addMeasurement(@yogurtInd2, @glucosaInd2)
      expect(@manz.indiceGlucemico.round(1)).to eq(52.2)
      expect(@choco.indiceGlucemico.round(1)).to eq(15.0)
      expect(@yogurt.indiceGlucemico.round(1)).to eq(41.3)
    end
  end
end
