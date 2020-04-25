def bfs(graph)
    q = Queue.new()
    q.enq(0)
    stack = [] 
    loop do 
        node = q.deq
        stack.push(node) unless stack.include?(node) 
        graph.values[node].each{ |x| q.enq(x) }
        break if stack.length == graph.length
    end 
    stack 
end  

p bfs({
    0=>[1, 2], 
    1=>[0, 3, 4], 
    2=>[0, 5, 6], 
    3=>[1], 
    4=>[1, 5], 
    5=>[2, 4], 
    6=>[2]
})

# expected: [0, 1, 2, 3, 4, 5, 6]
#      got: [0, 1, 3, 4, 2, 5, 6]


p bfs({
    0=>[1, 2], 
    1=>[0, 3, 4], 
    2=>[0, 5, 6], 
    3=>[1], 
    4=>[1], 
    5=>[2], 
    6=>[2]
})

#  expected: [0, 1, 2, 3, 4, 5, 6]
#  got: [0, 1, 3, 4, 2, 5, 6]

def bfs(graph, arr = [0], i = 0)
    res = graph[i] - arr            # Values in graph[i] that are not in arr
    arr = arr + res
    res.each do |node|
      arr |= bfs(graph, arr, node)  # Adds to arr without duplicates
    end
    return arr
  end