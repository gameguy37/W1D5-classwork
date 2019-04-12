require "byebug"
class PolyTreeNode

    def initialize(value)
        @value = value 
        @parent = nil 
        @children = []
    end 

    def parent
        @parent
    end 

    def children
        @children
    end 

    def value 
        @value
    end 

    def parent=(new_p)
        unless parent.nil?
            self.parent.children.delete(self)
        end
        
        @parent = new_p

        self.parent.children << self unless parent.nil?
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        if self.children.include?(child_node)
            child_node.parent = nil
        else
            raise "That ain't yo kid, fool!"
        end
    end

    def dfs(target)
        return self if self.value == target

        self.children.each do |child| 
            result = child.dfs(target) 
            return result unless result.nil? 
        end 
        nil 
    end

    def bfs(target)
        queue = [self]
        until queue.empty? 
            first = queue.shift
            return first if first.value == target
            first.children.each { |child| queue << child }
        end
        nil
    end
end