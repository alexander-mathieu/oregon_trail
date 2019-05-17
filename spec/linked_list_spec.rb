require 'spec_helper'
require './lib/node'
require './lib/linked_list'

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

      @linked_list.append("Surname 2")

      expect(@linked_list.head.next_node.surname).to eq("Surname 2")
    end

    it "#count" do
      @linked_list.append("Surname")

      expect(@linked_list.count).to eq(1)

      @linked_list.append("Surname 2")

      expect(@linked_list.count).to eq(2)
    end

    it "#to_string" do
      @linked_list.append("Surname")

      expect(@linked_list.to_string).to eq("The Surname family")

      @linked_list.append("Surname 2")

      expect(@linked_list.to_string).to eq("The Surname family, followed by the Surname 2 family")
    end

    it "#prepend" do
      @linked_list.append("Surname")
      @linked_list.append("Surname 2")

      @linked_list.prepend("Surname 3")

      expect(@linked_list.head.surname).to eq("Surname 3")
    end

    it "#insert" do
      @linked_list.append("Surname")
      @linked_list.append("Surname 2")

      @linked_list.insert(1, "Surname 3")

      expect(@linked_list.head.next_node.surname).to eq("Surname 3")
    end
  end
end


# => <Node @surname="Lawson" @next_node=<Node @surname="Brooks" ... > #5678904567890>
# > list.to_string
# => "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family"
