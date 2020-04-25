def graph(hash_graph)
    visited = []
    node = 0            
    while(node !=4 )
        visited.push(node)
        node = hash_graph[node][0]        
    end
    visited.push(4)
end

hash = { 
0 => [2], 
1 => [4], 
2 => [5, 0, 3], 
3 => [2], 
4 => [1, 5], 
5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]