class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    @head = Node.new(surname)
  end

  def count
    if @head.nil?
      return 0
    else
      @head.count(1)
    end
  end

  def to_string
    "The #{@head.surname} Family"
  end
end
