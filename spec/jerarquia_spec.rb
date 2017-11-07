require 'spec_helper'
require 'jerarquia'

RSpec.describe "Jerarquias de alimentos" do

  context HuevosLacteosHelados do
    it "Makes hierarchy-tests with three Elements" do
      hf = HuevosLacteosHelados.new("Huevo frito", 14.1, 0.0, 19.5)
      lv = HuevosLacteosHelados.new("Leche vaca", 3.3, 4.8, 3.2)
      yo = HuevosLacteosHelados.new("Yogurt", 3.8, 4.9, 3.8)

      expect(hf.class).to eq(HuevosLacteosHelados)
      expect(lv.instance_of?(HuevosLacteosHelados)).to eq(true)
      expect(yo.class.superclass).to eq(Alimento)
      expect(yo.is_a?(Object)).to eq(true)
    end
  end

  context CarnesDerivados do
    it "Makes hierarchy-tests with three Elements" do
      ce = CarnesDerivados.new("Cerdo",              21.5,        0.0,         6.3)
      te = CarnesDerivados.new("Ternera",            21.1,        0.0,         3.1)
      po = CarnesDerivados.new("Pollo",              20.6,        0.0,         5.6)

      expect(ce.class).to eq(CarnesDerivados)
      expect(te.instance_of?(CarnesDerivados)).to eq(true)
      expect(po.class.superclass).to eq(Alimento)
      expect(ce.is_a?(Object)).to eq(true)
    end
  end

  context PescadosMariscos do
    it "Makes hierarchy-tests with three Elements" do
      ba = PescadosMariscos.new("Bacalao",            17.7,        0.0,         0.4)
      at = PescadosMariscos.new("Atún",               21.5,        0.0,        15.5)
      sa = PescadosMariscos.new("Salmón",             19.9,        0.0,        13.6)

      expect(at.class).to eq(PescadosMariscos)
      expect(ba.instance_of?(PescadosMariscos)).to eq(true)
      expect(sa.class.superclass).to eq(Alimento)
      expect(at.is_a?(Object)).to eq(true)
    end
  end

  context AlimentosGrasos do
    it "Makes hierarchy-tests with three Elements" do
      ao = AlimentosGrasos.new("Aceite de oliva",     0.0,        0.2,        99.6)
      ma = AlimentosGrasos.new("Mantequilla",         0.7,        0.0,        83.2)
      ch = AlimentosGrasos.new("Chocolate",           5.3,       47.0,        30.0)

      expect(ao.class).to eq(AlimentosGrasos)
      expect(ma.instance_of?(AlimentosGrasos)).to eq(true)
      expect(ch.class.superclass).to eq(Alimento)
      expect(ch.is_a?(Object)).to eq(true)
    end
  end

  context AlimentosCarbohidratos do
    it "Makes hierarchy-tests with three Elements" do
      az = AlimentosCarbohidratos.new("Azúcar",              0.0,       99.8,         0.0)
      ar = AlimentosCarbohidratos.new("Arroz",               6.8,       77.7,         0.6)
      le = AlimentosCarbohidratos.new("Lentejas",           23.5,       52.0,         1.4)
      pa = AlimentosCarbohidratos.new("Papas",               2.0,       15.4,         0.1)

      expect(pa.class).to eq(AlimentosCarbohidratos)
      expect(ar.instance_of?(AlimentosCarbohidratos)).to eq(true)
      expect(le.class.superclass).to eq(Alimento)
      expect(az.is_a?(Object)).to eq(true)
    end
  end

  context VerdurasHortalizas do
    it "Makes hierarchy-tests with three Elements" do
      to = VerdurasHortalizas.new("Tomate",              1.0,        3.5,         0.2)
      ce = VerdurasHortalizas.new("Cebolla",             1.3,        5.8,         0.3)
      ca = VerdurasHortalizas.new("Calabaza",            1.1,        4.8,         0.1)

      expect(ce.class).to eq(VerdurasHortalizas)
      expect(ce.instance_of?(VerdurasHortalizas)).to eq(true)
      expect(to.class.superclass).to eq(Alimento)
      expect(ca.is_a?(Object)).to eq(true)
    end
  end

  context Frutas do
    it "Makes hierarchy-tests with three Elements" do
      ma = Frutas.new("Manzana",             0.3,       12.4,         0.4)
      pl = Frutas.new("Plátanos",            1.2,       21.4,         0.2)
      pe = Frutas.new("Pera",                0.5,       12.7,         0.3)

      expect(pl.class).to eq(Frutas)
      expect(pe.instance_of?(Frutas)).to eq(true)
      expect(pl.class.superclass).to eq(Alimento)
      expect(ma.is_a?(Object)).to eq(true)
    end
  end

  context "Different types of foods" do
    it "should not be the same class for foods of different categories" do
      pl = Frutas.new("Plátanos",            1.2,       21.4,         0.2)
      ao = AlimentosGrasos.new("Aceite de oliva",     0.0,        0.2,        99.6)
      
      expect(pl.class).not_to eq(ao.class)
    end
    
    it "should be the same superclass for foods of different categories" do
      pl = Frutas.new("Plátanos",            1.2,       21.4,         0.2)
      ao = AlimentosGrasos.new("Aceite de oliva",     0.0,        0.2,        99.6)
      
      expect(pl.class.superclass).to eq(ao.class.superclass)
    end
  end

end
