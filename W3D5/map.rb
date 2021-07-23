class Map
    def initialize
        @arr = []
    end

    def set(key,value)
        @arr.each do |ele|
            if ele[0] == key
                ele[1] = value
                p "key was found and was updated"
                return true
            end
        end
        @arr << [key,value]
        return true
    end

    def get(key)
        @arr.each do |keyVal|
            if keyVal[0] == key
                return keyVal[1]
            end
        end
        p "key could not be found"
        nil
    end

    def delete(key)
        @arr.each_with_index do |ele,idx|
            if ele[0] == key
                @arr.delete_at(idx)
                return true
            end
        end
        return false
    end

    def show
        @arr
    end

end