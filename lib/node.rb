class Node
  attr_reader :surname,
              :next_node

  def initialize(surname)
    @surname   = surname
    @next_node = nil
  end

  def add_node(surname)
    if @next_node.nil?
      @next_node = Node.new(surname)
    else
      @next_node.add_node(surname)
    end
  end

  # def assume_next_position
  #   if @next_node.nil?
  #     @next_node = Node.new(@surname)
  #   else
  #     @next_node.assume_next_position
  #     @next_node = Node.new(@surname)
  #   end
  # end

  def count(total)
    if @next_node.nil?
      return total
    else
      total += 1
      @next_node.count(total)
    end
  end

  def caravan_names(family_name)
    if @next_node.nil?
      "#{family_name}, followed by the #{@surname} family"
    else
      @next_node.caravan_names("#{family_name}, followed by the #{@surname} family")
    end
  end
end
