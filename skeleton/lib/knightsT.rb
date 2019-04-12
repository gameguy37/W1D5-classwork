require_relative "00_tree_node"

class KnightPathFinder

    def initialize(pos)
        @pos = pos
        @root_node = PolyTreeNode.new(pos)
        self.build_move_tree
        @considered_positions = [pos]
    end

    def build_move_tree
    
    end
    

    def self.valid_moves(pos) 
        moves = [[1,2],[1,-2],[-1,-2],[-1,2],[2,1],[2,-1],[-2,-1],[-2,1]]
        valid_moves = []
        moves.each do |arr|
            valid_moves << [pos[0]+arr[0],pos[1]+arr[1]]
        end 
            valid_moves.select { |arr| arr[0] >= 0 && arr[1] >= 0 }
    end 

    def new_move_positions(pos)
        if @considered_positions.include?(pos)

    

end

#[1,2]