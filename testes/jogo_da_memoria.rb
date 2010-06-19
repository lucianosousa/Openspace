class JogoDaMemoria
  def cartas
    cartas = []
    [:triangulo, :losango, :trapezio, :quadrado, :bola].each do |figura|
     cartas << construir_cartas(figura)
     cartas << construir_cartas(figura)
    end
    cartas
  end
  
  def construir_cartas(figura)
    carta = {:figura => figura, :virada => :cima}
  end

  def desvirar(cartas)
    cartas_desviradas = []
    cartas.each do |carta|
      carta[:virada] = :baixo
      cartas_desviradas << carta
    end
    cartas_desviradas
  end

end