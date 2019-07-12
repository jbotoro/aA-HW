class Map
    def initialize
        @i = Array.new
    end

    def set(key,value)
       if @i.include?(key)
            @i.each do |pair|
                if pair[0] == key
                    pair[1] = value
                end
            end
        else
            @i << [key,value]
        end
    end

    def get(key)
        @i.each do |pairs|
            return pairs if pairs[0] == key
        end
    end

    def delete(key)

    end

    def show

    end

end