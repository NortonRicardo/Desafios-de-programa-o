# ==============================================================================
# NORTON PEREIRA RICARDO - 18/08/200
# SOLUCAO PARA O SEGUINTE PROBLEMA

# criar um programa que recebe N pontos (latitude e longitude) e
# retorna a distância entre eles, ou seja a distância do primeiro
# ponto para todos os outros pontos, do segundo ponto para todos
# os outros pontos...e assim por diante...

# SITE PARA VALIDAR AS DISTANCIAS USADAS
# https://www.sunearthtools.com/pt/tools/distance.php

# OBS: ESTE MAIN USA IMPUTAÇÃO DE VALORES VIA TECLADO, BASTA EXECUTAR
# E SEGUIR OS COMANDOS NO TERMINAL
# OPÇÃO 1 - ADD UM PONTO(LATITUDE E LONGITUDE) A UMA Hash
# OPÇÃO 2 - IMPRIME TODOS OS PONTOS ADICIONADOS, E EM SEGUIDA A DISTACIA DO PONTO
#           EM QUESTÃO EM RELAÇÃO AOS DEMAIS PONTOS
# OPÇÃO 0 - ENCERRA O PROBLEMA
# ==============================================================================
require_relative "ponto"

@op = nil
@hash_pontos = []


def menu_opcao
  print "Escolha uma opção(somente o numero):\n"
  print " 1 - Adicionar um pont(latitude, longitude). \n"
  print " 2 - Mostrar todos pontos, com Distancia entre eles. \n"
  print " 0 - Sair \n"
  print "OPÇÃO:"
  @op = gets.chomp
end

def add_ponto
  puts "\n\n"
  puts "DIGITE A LAGITUDE: "
  lagitude = gets.chomp
  puts "DIGITE A LONGITUDE: "
  longitude = gets.chomp

  @hash_pontos.push(Ponto.new(lagitude.to_f, longitude.to_f))

  puts "\n\n\n\n"
end

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

menu_opcao

while @op != "0"

  case @op.to_i
  when 1 then
    add_ponto
  when 2 then
    print_distancia_entre_pontos
  else
    puts "valor lido: #{@op}"
    puts "OPCAO INVALDA, TENTE NOVAMENTE!!"
    puts "\n\n\n\n"
  end

  menu_opcao
end
