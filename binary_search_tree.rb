class BST
    attr_reader :data, :left, :right

    def initialize(data)
        @data = data 
        @left = nil 
        @right = nil 
    end 

    def insert(new_key)
        if new_key <= self.data 
            @left.nil? ? @left = BST.new(new_key) : @left.insert(new_key)
        elsif new_key > self.data 
            @right.nil? ? @right = BST.new(new_key) : @right.insert(new_key)
        end 
    end

    def each(&block)
        if left 
            left.each(&block)
        end
        yield data 
        if right 
            right.each(&block)
        end  
    end 
end 
    

