require 'spec_helper'
require 'jerarquia'

RSpec.describe "Jerarquias de alimentos" do

  context HuevosLacteosHelados do
    it "Makes hierarchy-tests with three Elements" do
      hf = HuevosLacteosHelados.new("Huevo frito", 14.1, 0.0, 19.5)
      lv = HuevosLacteosHelados.new("Leche vaca", 3.3, 4.8, 3.2)
      yo = HuevosLacteosHelados.new("Yogurt", 3.8, 4.9, 3.8)
    end
  end

  context CarnesDerivados do
    it "Makes hierarchy-tests with three Elements" do
      ce = CarnesDerivados.new("Cerdo",              21.5,        0.0,         6.3)
      te = CarnesDerivados.new("Ternera",            21.1,        0.0,         3.1)
      po = CarnesDerivados.new("Pollo",              20.6,        0.0,         5.6)
    end
  end

  context PescadosMariscos do
    it "Makes hierarchy-tests with three Elements" do
      ba = PescadosMariscos.new("Bacalao",            17.7,        0.0,         0.4)
      at = PescadosMariscos.new("Atún",               21.5,        0.0,        15.5)
      sa = PescadosMariscos.new("Salmón",             19.9,        0.0,        13.6)
    end
  end

  context AlimentosGrasos do
    it "Makes hierarchy-tests with three Elements" do
      ao = AlimentosGrasos.new("Aceite de oliva",     0.0,        0.2,        99.6)
      ma = AlimentosGrasos.new("Mantequilla",         0.7,        0.0,        83.2)
      ch = AlimentosGrasos.new("Chocolate",           5.3,       47.0,        30.0)
    end
  end

  context AlimentosCarbohidratos do
    it "Makes hierarchy-tests with three Elements" do
      az = AlimentosCarbohidratos.new("Azúcar",              0.0,       99.8,         0.0)
      ar = AlimentosCarbohidratos.new("Arroz",               6.8,       77.7,         0.6)
      le = AlimentosCarbohidratos.new("Lentejas",           23.5,       52.0,         1.4)
      pa = AlimentosCarbohidratos.new("Papas",               2.0,       15.4,         0.1)
    end
  end

  context VerdurasHortalizas do
    it "Makes hierarchy-tests with three Elements" do
      xy = VerdurasHortalizas.new("Tomate",              1.0,        3.5,         0.2)
      xy = VerdurasHortalizas.new("Cebolla",             1.3,        5.8,         0.3)
      xy = VerdurasHortalizas.new("Calabaza",            1.1,        4.8,         0.1)
    end
  end

  context Frutas do
    it "Makes hierarchy-tests with three Elements" do
      xy = Frutas.new("Manzana",             0.3,       12.4,         0.4)
      xy = Frutas.new("Plátanos",            1.2,       21.4,         0.2)
      xy = Frutas.new("Pera",                0.5,       12.7,         0.3)
    end
  end

end
