# With graph2

def bfs(list, source, final)
  # Just because the graph nodes starts at 1 and not 0
  source -= 1
  final -= 1
  # --------------------------------------------------
  queue = []
  distances = []
  distances[source] = 0
  queue << source

  while queue.any?
    node = queue.shift
    list[node].each do |edge|
      if distances[edge] == nil
        queue << edge
        distances[edge] = distances[node] + 1
        return distances[edge] if edge == final
      end
    end
  end
  distances
end

list = [
  [0, 1, 3],
  [0, 2, 3],
  [3],
  [4],
  [],
]

p bfs(list, 1, 2)