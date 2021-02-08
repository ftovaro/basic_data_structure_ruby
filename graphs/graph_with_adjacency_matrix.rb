def bfs(matrix, source, destination)
  queue = []
  distances = []
  queue << source
  distances[source] = 0

  while queue.any?
    node = queue.shift
    adjacents = matrix[node]

    0.upto(adjacents.size - 1) do |i|
      if distances[i] == nil && matrix[node][i] == 1
        queue << i
        distances[i] = distances[node] + 1
        return distances[i] if destination == i
      end
    end
  end
  -1
end

def dfs(matrix, visited, node)
  adjacents = matrix[node]
  0.upto(adjacents.size - 1) do |i|
    if visited[i] == nil && matrix[node][i] == 1
      visited[i] = true
      dfs(matrix, visited, i)
    end
  end
end

undirected_matrix = [
  [0, 1, 0, 0],
  [1, 0, 1, 0],
  [0, 1, 0, 1],
  [0, 1, 1, 0]
]

# p bfs(matrix, 1, 3)

visited = []
root = 1
visited[root] = true
# dfs(matrix, visited, root)
# p visited


directed_matrix = [
  [0, 1, 0, 0, 0, 0],  # A: 0
  [0, 0, 1, 0, 0, 0],  # B: 1
  [0, 0, 0, 0, 1, 0],  # C: 2
  [0, 1, 0, 0, 0, 0],  # D: 3
  [0, 0, 0, 1, 0, 1],  # E: 4
  [0, 0, 0, 0, 0, 0],  # F: 5
]

visited = []
root = 3
visited[root] = false
dfs(directed_matrix, visited, root)
# p visited

p bfs(directed_matrix, 5, 0)