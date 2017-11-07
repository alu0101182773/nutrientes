require "nutrientes/version"

class Alimento

  attr_reader :nombre, :proteinas, :glucidos, :grasas

  def initialize (nombre, proteinas, glucidos, grasas)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @grasas = grasas
  end

  def to_s 
    "#{@nombre}:\nProteínas:\t #{@proteinas} gramos\nGlúcidos:\t #{@glucidos} gramos\nLípidos:\t #{@grasas} gramos\n\t\t por 100 gramos"
  end

  def valorEnergetico (gramos) 
    ((@proteinas * 4 + @glucidos * 4 + @grasas * 9) / 100) * gramos
  end
end


class List

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

end
