class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head.nil?
      @head = Node.new(surname)
    else
      @head.add_node(surname)
    end
  end

  def count
    if @head.nil?
      return 0
    else
      @head.count(1)
    end
  end

  def to_string
    "The #{@head.surname} family"
  end
end
