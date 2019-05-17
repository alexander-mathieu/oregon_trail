require 'spec_helper'
require './lib/linked_list.rb'

RSpec.describe LinkedList do
  before :each do
    @linked_list = LinkedList.new
  end

  it "should exist" do
    expect(@linked_list).to be_a LinkedList
  end

  it "it's head should be nil by default" do
    expect(@linked_list.head).to eq(nil)
  end

  describe "instance methods" do
    it "#append" do
      @linked_list.append("Surname")

      expect(@linked_list.head.surname).to eq("Surname")
      expect(@linked_list.head.next_node).to eq(nil)
    end

    it "#count" do
      @linked_list.append("Surname")

      expect(@linked_list.count).to eq(1)
    end

    it "#to_string" do
      @linked_list.append("Surname")

      expect(@linked_list.to_string).to eq("The Surname Family")
    end
  end
end
