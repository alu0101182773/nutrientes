require "nutrientes/version"

# This class allows to represent a food. It includes the foods
# Macronutrients and a way to calculate the energetic value.
# The mixin Comparable is included.
class Alimento
  
  include Comparable
  attr_reader :nombre, :proteinas, :glucidos, :grasas

  # Name and percentage of proteins, carbohydrates and fats are assigned
  def initialize (nombre, proteinas, glucidos, grasas)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @grasas = grasas
  end

  # returns this food in a nicely formatted way
  def to_s 
    "#{@nombre}:\nProteínas:\t #{@proteinas} gramos\nGlúcidos:\t #{@glucidos} gramos\nLípidos:\t #{@grasas} gramos\n\t\t por 100 gramos"
  end

  # calculates the energetic value of a food, generally of 100 grams
  # of this food. This can be changed by the user, depending on her needs
  def valorEnergetico (gramos = 100) 
    ((@proteinas * 4 + @glucidos * 4 + @grasas * 9) / 100) * gramos
  end

  # This method is defined because we included the mixin Comparable
  # We take the energetic Value as our means to compare two foods
  def <=> (anOther)
    if anOther.is_a?(Alimento) == false
      nil
    else
      self.valorEnergetico <=> anOther.valorEnergetico
    end
  end
end
