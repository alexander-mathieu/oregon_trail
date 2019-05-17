require 'spec_helper'
require './lib/node.rb'

RSpec.describe Node do
  before :each do
    @node = Node.new("Surname")
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
end
