# busca em profundidade
def dfs(grafo, search, inicio = "0")
  visited = []
  pilha = [inicio]
  while pilha.length > 0
    vertex = pilha.pop()
    if not visited.include?(vertex)
      visited.append vertex
      print "#{vertex} "
      
      if vertex == search
        return
      end
      
      grafo[vertex].each do |k|
        pilha.append k
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

dfs(grafo, "5")