require "Set"

class GraphNode
    attr_reader :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end
    def neighbors=(syms)
        @neighbors = syms
    end
    
    def bfs(starting_node,target_value)
        visited = Set.new
        queue = [starting_node]
        until queue.empty?
            node = queue.shift
            return node if node.value == target_value
            visited.add(node)
            queue += node.neighbors.select{|ele| !visited.include?(ele)}
        end
        nil
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

p a.bfs(a,"b")

p a.bfs(a,"f")