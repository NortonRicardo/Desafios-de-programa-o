# ==============================================================================
# NORTON PEREIRA RICARDO - 18/08/200
# SOLUCAO PARA O SEGUINTE PROBLEMA

# criar um programa que recebe N pontos (latitude e longitude) e
# retorna a distância entre eles, ou seja a distância do primeiro
# ponto para todos os outros pontos, do segundo ponto para todos
# os outros pontos...e assim por diante...

# SITE PARA VALIDAR AS DISTANCIAS USADAS
# https://www.sunearthtools.com/pt/tools/distance.php

# OBS: ESTE MAIN NÃO USA IMPUT DE VALORES PELO TECLADO, OS VALORES SÃO IMPUTADOS
# DIRETAMENTE NA VARIAVEL @HAS_VALORES, SENDO CADAO GRUPO DE VALOR DENTRO DE UM
# [LA,LO], ONDE SÃO LATITUDE E LONGITUDE
# ==============================================================================
require_relative "ponto"

def print_distancia_entre_pontos
  @hash_pontos.each_with_index do |ponto, index|
    print "PONTO [#{index}] \n"
    print "LATITUDE: #{ponto.latitude} - LONGITUDE: #{ponto.longitude} \n"
    print "************************************************************ \n\n"
    @hash_pontos.reject {|obj| obj == ponto }.each do |ponto_b|
      print "         DISTANCIA PARA O PONTO: \n"
      print "         LATITUDE: #{ponto_b.latitude} - LONGITUDE: #{ponto_b.longitude} \n"
      print "         DISTANCIA: #{ponto.calcula_distancia(ponto_b)} KM"
      print "\n\n"
    end
    print "************************************************************ \n\n"
    print "=============================================================== \n\n"

  end
end

# latirude e longitude respectivamente
@has_valores= [[-18.969142,-50.633449],
                [-18.154779,-47.927614],
                [-17.923622,-51.717467],
                [-17.745066,-49.101698],
                [-16.962536,-50.42545],
                [-16.642841,-49.220222],
                [-13.253521,-46.890326]]


@hash_pontos = []

@has_valores.each do |ponto|
  @hash_pontos.push(Ponto.new(ponto[0], ponto[1]))
end

# imprime pontos
print_distancia_entre_pontos
