require 'spec_helper'
require 'list'

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

    it "should be possible to check if a list is empty" do
      list = List.new()
      expect(list.isEmpty?).to eq(true)
      list.add(42)
      expect(list.isEmpty?).to eq(false)
    end

  end   
  
  context "Get Elements of List" do
    
    it "should be able to get the first and last Value" do
      list = List.new()
      list.addAll([1,2,4,8])
      expect(list.head()).to eq(1)
      expect(list.tail()).to eq(8)
    end

    it "should be able to make an Array from the list" do
      list = List.new()
      list.addAll([1,2,4,8,16])
      expect(list.to_a()).to eq([1,2,4,8,16])
      list.add(32)
      expect(list.to_a()).to eq([1,2,4,8,16,32])
    end
    
    it "should be able to make a reverse Array from the list" do
      list = List.new()
      list.addAll([1,2,4,8,16])
      expect(list.to_a_reverse()).to eq([16,8,4,2,1])
      list.add(32)
      expect(list.to_a_reverse()).to eq([32,16,8,4,2,1])
    end

  end

  context "Mixin Enumerable" do

    before :each do
      @list = List.new()
      @list.addAll([2,1,6,5,4,3])
    end

    it "should include the mixin Enumerable" do
      expect(List.include?(Enumerable)).to eq(true)
    end
    it "should include each method" do
      sum = 0
      @list.each { |i| sum += i }
      expect(sum).to eq(21)
    end
    it "should include collect method" do
      expect(@list.collect {|i| i.to_s + "x"}).to eq(["2x", "1x", "6x", "5x", "4x", "3x"])
    end
    it "should include detect method" do
      expect(@list.detect{|i| i.between?(2,3)}).to eq(2)
    end
    it "should include select method" do
      expect(@list.select{|i|i.between?(3,5)}).to eq([5,4,3])
    end
    it "should include sort method" do
      expect(@list.sort).to eq([1,2,3,4,5,6])
    end
    it "should include max method" do
      expect(@list.max).to eq(6)
    end
    it "should include min method" do
      expect(@list.min).to eq(1)
    end
  end

end
