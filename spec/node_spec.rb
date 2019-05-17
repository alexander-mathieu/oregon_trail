require 'spec_helper'
require './lib/node.rb'

RSpec.describe Node do
  before :each do
    @node   = Node.new("Surname")
  end

  it "it should exist" do
    expect(@node).to be_a Node
  end

  it "it has a surname" do
    expect(@node.surname).to eq("Surname")
  end

  it "it's next node is nil by default" do
    expect(@node.next_node).to eq(nil)
  end

  describe "instance methods" do
    it "#count" do
      @node_2 = @node.add_node("Surname 2")
      @node_3 = @node.add_node("Surname 3")

      expect(@node.count(1)).to eq(3)
    end

    it "#caravan_names" do
      @node_2 = @node.add_node("Surname 2")

      expect(@node.next_node.caravan_names("The #{@node.surname} family")).to eq("The Surname family, followed by the Surname 2 family")
    end
  end
end
