# faça um programa que leia 2 inteiros N e A
# N é o número de vértices em um grafo
# A é o a distância máxima entre os vértices deste grafo
# em seguida o programa deve ler N valores 
# do tipo X, Y contendo as posições do grafo
# monte o grafo sabendo que os pontos são
# adjacentes apenas no caso da distância entre
# eles ser menor ou igual que A
# apresente na tela N linhas contento o vértice e
# os vértices adjacentes a ele

N, A = gets.chomp.split.map(&:to_i)

points = []

N.times do
  x, y = gets.chomp.split.map(&:to_i)
  points.append [x,y]
end

grafo = {}

points.each do |p0|
  grafo[p0] = []
  x0, y0 = p0
  points.each do |p|
    x, y = p
    dist = (x0-x).abs + (y0-y).abs
    if dist <= A and p0 != p
      grafo[p0].append p
    end
  end
end

grafo.keys.each do |k|
  puts "#{k} => #{grafo[k]}"
end