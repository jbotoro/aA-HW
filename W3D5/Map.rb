class Map
    def initialize
        @i = Array.new
    end

    def set(key,value)
        unique = 0
        @i.each do |pairs|
            if pairs[0].include?(key)
                pairs[1] = value
                unique += 1
            end
        end

        if unique == 0
            @i << [key,value]
        else
            self
        end
    end

    def get(key)
        @i.each do |pairs|
            return pairs if pairs[0] == key
        end
    end

    def delete(key)
        @i.each_with_index do |pairs,idx|
            if pairs[0] == key
                @i.delete_at(idx)
            end
        end
    end

    def show
        self
    end
end

test = Map.new

p test.set("Jordan", 2)
p test.set("Jordan", 5)
p test.set("hello", "world")
p test.get("Jordan")
p test.delete("Jordan")
p test.show