# Representação de Grafo com Dicionário
# Crie um grafo simples representado como um dicionário em Python, 
# onde as chaves são os nós e os valores são listas de vizinhos.

# Faça um programa que leia um inteiro N 
# N é o número de de vértices em um grafo
# e as N linhas leem um X valores contendo
# os X vértices vizinhos ao vertice atual

n = gets.chomp.to_i

grafo = {}

n.times do |i|
  edges = gets.chomp.split
  grafo[i.to_s] = []
  edges.each do |e|
    grafo[i.to_s].append e
  end
end

grafo.keys.each do |k|
  puts "#{k} => #{grafo[k]}"
end