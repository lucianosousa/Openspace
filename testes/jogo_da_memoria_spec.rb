require 'jogo_da_memoria'

describe "Jogo da memoria" do
  before do
    @jogo_da_memoria = JogoDaMemoria.new
  end

  it "Deve ter cartas" do
    @jogo_da_memoria.cartas.size.should > 0
  end
  it "Deve ter quantidade de cartas par" do
    @jogo_da_memoria.cartas.size.even?.should be_true
  end
    
  it "Deve ter inicialmente 10 cartas" do
    @jogo_da_memoria.should have(10).cartas
  end

  it "Deve ter duas cartas iguais de cada figura" do
    cartas = @jogo_da_memoria.cartas
    cartas.each do |carta|
      cartas.count(carta).should == 2
    end
  end

  it "Deve ter um jogador"
  it "Deve embaralhar as cartas"

  it "Deve comecar com cartas viradas para cima" do
    cartas = @jogo_da_memoria.cartas
    cartas.each do |carta|
      carta[:virada].should == :cima
    end
  end

  it "Deve desvirar todas as cartas" do
    cartas = @jogo_da_memoria.cartas
    cartas_desviradas = @jogo_da_memoria.desvirar(cartas)
    cartas_desviradas.each do |carta|
      carta[:virada].should == :baixo
    end    
  end
  it "Deve mostrar duas cartas por vez"
  it "Deve acabar o jogo se não houver mais cartas a serem mostradas"

end