# busca em largura (precisa concertar)
def bfs(grafo, inicio, search)
  visitados = []
  fila = [inicio]
  while fila
    vertex = fila[0]
    fila.drop 1
    if not vertex in visitados
      print "#{vertex} "
      return if vertex == search
      visitados.append vertex
      grafo[vertex].each do |v|
        if not v in visitados
          fila.append v
        end
      end
    end
  end
end

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

bfs(grafo, 0, 5)