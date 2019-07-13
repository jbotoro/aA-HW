require "set"

class GraphNode
    attr_accessor :value, :neighbors
    
    def initialize(value)
        self.value = value
        self.neighbors = []
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(start_node, target_value,visited = Set.new())


    queue = [start_node]

    until queue.empty?
        ele =queue.shift
        return ele if ele.value == target_value
        ele.neighbors.each do |neighbor|
            queue << neighbor
            return nil if visited.include?(neighbor.value)
            visited << neighbor.value 
        end
    end
    
    nil
end

p bfs(a, "f")
