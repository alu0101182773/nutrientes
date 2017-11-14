require "nutrientes/version"

class Alimento
  
  include Comparable
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

  def valorEnergetico (gramos = 100) 
    ((@proteinas * 4 + @glucidos * 4 + @grasas * 9) / 100) * gramos
  end

  def <=> (anOther)
    if anOther.is_a?(Alimento) == false
      nil
    else
      self.valorEnergetico <=> anOther.valorEnergetico
    end
  end
end
