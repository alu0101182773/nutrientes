require 'nutrientes/version'

# This class is used to represent double-linked lists
# It includes the mixin Enumerable
class List

  include Enumerable
  # This structure is used to represent Nodes in the List,
  # which have a value, a next node and a previous node
  Node = Struct.new("Node", :value, :next, :prev)
  
  # initializes the vales of the list's head and tail to nil
  def initialize

    @head = nil
    @tail = nil

  end

  # returns true if the list is empty and false else
  def isEmpty?
    if @head == nil then
      true
    else
      false
    end
  end

  # adds a value to the end of the list, behind the former last element
  # if it's the first element, this becomes the new head and tail
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

  # adds all elements in the given Array to our list. This works by
  # calling the add(value)-method for each element in the array
  def addAll (array)

    array.each { |value| add(value) }

  end
  
  # returns the head-node
  def getNode

    @head

  end

  # returns the value of the head
  def head
    @head.value
  end

  # returns the value of the tail
  def tail   
    @tail.value
  end

  # returns an array with all the values of this list
  def to_a
    tempArray = []
    tempNode = @head
    while tempNode != nil do
      tempArray.push(tempNode.value)
      tempNode = tempNode.next
    end
    tempArray
  end

  # returns an array with all the values of this list,
  # but in a reverse order
  def to_a_reverse
    tempArray = []
    tempNode = @tail
    while tempNode != nil do
      tempArray.push(tempNode.value)
      tempNode = tempNode.prev
    end
    tempArray
  end

  # this method is included because we implement the method
  # Enumerable. Yields every element in the list, one after
  # another, by calling the to_a-method.
  def each
    self.to_a.each { |i| yield i }
  end

end
