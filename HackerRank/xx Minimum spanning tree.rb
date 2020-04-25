def connected_nodes(matrix, node)
  connected = []
  conections = matrix[node[0]]
  conections.each_with_index do |item, index|
    if item != 0
      connected << [index, item]
    end
  end
  connected
end
​
def matrix_to_graph(matrix, start)
  q = Queue.new 
  visited = []
  graph = { }
  q.push(start)
  while q.length > 0
    p = q.pop
    (visited.include? p) ? next : visited.push(p)
    nodes = connected_nodes(matrix, p)
    graph[p[0]] = nodes
    nodes.each{|x| q.push(x)}
  end
  graph
end
​
def shortest_path(graph, visited = [], parents = [[0,0]], visited_hash = {})
  return graph, visited, visited_hash if parents.length <=0
    
  parent = parents.shift()
  visited << parent[1]
  level_nodes = graph[parent[0]]
  # puts "Parent: #{parent.to_s}"
  # puts "Level Nodes: #{level_nodes}"
​
  selected_nodes = []
  cost = nil
  path = nil
  level_nodes.each do |level_node|
    selected_nodes << level_node unless visited_hash[level_node[0]]
    cost ||= level_node[1]
    path ||= level_node[0]
    if level_node[1] < cost
      cost = level_node[1]
      path = level_node[0]
    end
  end
  visited_hash[parent[0]] = [cost,path] # unless visited_hash[parent[0]]
​
  parents.each do |node|
    selected_nodes << node unless visited_hash[node[0]]
  end
  
  selected_nodes.sort_by!{ |el| [el[1], el[0]] }
​
  
  # puts "Selected: #{selected_nodes.to_s}"
  # puts ""
​
  shortest_path(graph, visited, selected_nodes, visited_hash)
  
end
​
def shortest_path_wg(matrix)
  # write your code here
  graph = matrix_to_graph(matrix,[0,0])
  minimum = shortest_path(graph)[1]
  minimum.shift()
  minimum
end
​
​
def minimum_spanning_tree(matrix)
  # write your code here
  shortest_path_wg(matrix)
end