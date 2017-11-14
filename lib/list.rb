require 'nutrientes/version'

class List

  include Enumerable
  Node = Struct.new("Node", :value, :next, :prev)
  
  def initialize

    @head = nil
    @tail = nil

  end

  def isEmpty?
    if @head == nil then
      true
    else
      false
    end
  end

  def add (value)

    if @tail == nil then
      @head = Node.new(value, nil, nil)
      @tail = @head
    else
      temp = Node.new(value, nil, @tail)
      @tail.next = temp
      @tail = temp
    end

  end

  def addAll (array)

    array.each { |value| add(value) }

  end
  
  def getNode

    @head

  end

  def head
    @head.value
  end

  def tail   
    @tail.value
  end

  def to_a
    tempArray = []
    tempNode = @head
    while tempNode != nil do
      tempArray.push(tempNode.value)
      tempNode = tempNode.next
    end
    tempArray
  end

  def to_a_reverse
    tempArray = []
    tempNode = @tail
    while tempNode != nil do
      tempArray.push(tempNode.value)
      tempNode = tempNode.prev
    end
    tempArray
  end

  def each
    self.to_a.each { |i| yield i }
  end

end
