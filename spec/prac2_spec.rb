require "spec_helper"
include Benchmark

# node = Struct.new :value, :next, :prev
# nodo0[:value] = false
# bacalao= Pescados.new("bacalao",17.7,0.0,0.4)
# huevo_frito = Huevos_lacteos_helados.new("huevo_frito", 14.1, 0.0, 19.5)  
# cerdo = Carnes.new("cerdo",14.1,0.0,6.3) 

# nodo1 = node.new()
# nodo1[:value] = huevo_frito

# nodo2 = node.new()
# nodo2[:value] = cerdo
  
# nodo3 = node.new()
# nodo3[:value] = bacalao

# lista = Listde.new(nodo1)
# lista.insert(nodo2)
# lista.insert(nodo3)
# 
# end
RSpec.describe "#IG del alimento" do
  before :all do
    @manzana = Frutas.new("Manzana", 0.3, 12.4, 0.4)
    @yogurt = Huevos_lacteos_helados.new("Yogurt", 3.8, 4.9, 3.8)
    @azucar = Alimentos_carbohidratos.new("Azucar", 0.0, 99.8, 0.0)                         #manzana, yogurt,azucar
    @azucar1 = Alimentos_carbohidratos.new("Azucar", 0.0, 94.8, 0.0)
    @azucar2 = Alimentos_carbohidratos.new("Azucar", 0.0, 90.8, 0.0)
    @vec = [@yogurt,@azucar,@manzana,@azucar1,@azucar2]
    
  end

  it 'El alimento manzana se ha inicializado de forma correcta' do
    expect(@manzana.name).to eq("Manzana")
    expect(@manzana.proteinas).to eq(0.3)
    expect(@manzana.glucidos).to eq(12.4)
    expect(@manzana.grasas).to eq(0.4)
    expect(@manzana.ve).to eq(54.400000000000006)
    expect(@yogurt.ve).to eq(69)
    expect(@azucar.ve).to eq(399.2)
    expect(@azucar1.ve).to eq(379.2)
    expect(@azucar2.ve).to eq(363.2)
    # expect(@vec[0].ve).to eq(69)
    # x=0
    # puts (@vec.impr(x))
  end
  it 'Método for' do
    expect(@vec.burbuja).to eq([@manzana,@yogurt,@azucar2,@azucar1,@azucar])
  end
  it 'Método each' do
    expect(@vec.each_sort).to eq([@manzana,@yogurt,@azucar2,@azucar1,@azucar])
  end
  it 'Método sort' do
    expect(@vec.sort).to eq([@manzana,@yogurt,@azucar2,@azucar1,@azucar])
  end

  

  # it 'AIBC Imperativo' do
  #   expect(@manzana.aibc_imperative).to eq([27.999999999999993, 183.25])
  # end

  # it 'AIBC funcional' do
  #   expect(@manzana.aibc_funcional).to  eq([27.999999999999993, 183.25])
  # end

  # it 'IG de la manzana' do
  #   igind = @manzana.aibc_funcional.zip(@glucosa.aibc_funcional).collect{|i| i.reduce(:/)}.collect{|j| j*100}  # 1º manzana[0]-glucosa[0] y manzana[1]-glucosa[1] 2º haciendo la división que dicatamina el reduce y luego un vector que contiene las dos operaciones ya multiplicadas por cien.
  #   sizem=igind.size                                                                                          #resultado:  [igind1, igind2]
  #   igm = igind.reduce(:+) / sizem   #suma del resultado de arriba
  #   expect(igm).to eq(52.21619897959183)
  # end
end

Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
    @manzana = Frutas.new("Manzana", 0.3, 12.4, 0.4)
    @yogurt = Huevos_lacteos_helados.new("Yogurt", 3.8, 4.9, 3.8)
    @azucar = Alimentos_carbohidratos.new("Azucar", 0.0, 99.8, 0.0)                         #manzana, yogurt,azucar
    @azucar1 = Alimentos_carbohidratos.new("Azucar", 0.0, 94.8, 0.0)
    @azucar2 = Alimentos_carbohidratos.new("Azucar", 0.0, 90.8, 0.0)
    @vec = [@yogurt,@azucar,@manzana,@azucar1,@azucar2]
    tf = x.report("metodo for")   {@vec.burbuja }
    tf = x.report("metodo each")   {@vec.each_sort}
    tf = x.report("metodo sort")   {@vec.sort}
end