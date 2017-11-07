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



end
