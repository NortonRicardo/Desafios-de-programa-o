# ==============================================================================
# NORTON PEREIRA RICARDO - 18/08/200
# SOLUCAO PARA O PROBLEMA DO MIOJO
# ==============================================================================


class ViradasAmpulheta
  def executar(t, a, b)
    # print "\n\n\n"
    for i in 1..b
       # print "i:#{i} - cal: #{((a*i)%b)}\n"
  		 return i if ((a*i)%b == t)
  	end
  end
end

puts "\n\n"
puts "DIGITE SOMENTE NUMEROS INTEIROS.\n"
puts "DIGITE O TEMPO DE PREPARO\n"
t = gets.chomp.to_i
puts "DIGITE O TEMPO DA AMPULHETA 1\n"
a = gets.chomp.to_i
puts "DIGITE O TEMPO DA AMPULHETA 2\n"
b = gets.chomp.to_i

# t=3
# a=5
# b=7

vira_ampulheta = ViradasAmpulheta.new()
max_a = vira_ampulheta.executar(t, a, b)
max_b = vira_ampulheta.executar(t, b, a)

# multiplica rodas da ampulheta pelo tempo, e pega o menor tempo
print " RESULTADO: #{[a*max_a, b*max_b].min()} \n"
