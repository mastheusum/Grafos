# faça um programa que rebe um grafo
# e conte quantos vérticies e arestas ele
# tem
# considere que o exercício teve sucesso
# apenas se a contagem foi feita
# após a construção do grafo 

n = gets.chomp.to_i

grafo = {}

n.times do |i|
  edges = gets.chomp.split
  grafo[i.to_s] = []
  edges.each do |e|
    grafo[i.to_s].append e
  end
end

vertices = 0
arestas = 0
grafo.keys.each do |k|
    if grafo[k].size > 0
      vertices += 1
      arestas += grafo[k].size
    end
end

# esse grafo não é direcional
# por isso temos a metade de arestas
# em relação a conta total
arestas /= 2

puts "vertices: #{vertices}"
puts "arestas: #{arestas}"
