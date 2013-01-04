class Stack
    def initialize
        @data = []
    end

    def push(value)
        @data[@data.count] = value
    end

    def pop
        @data.delete(@data[-1])
    end

    def to_s
        "There are #{@data.length} items in this stack : #{@data}"
    end
end


# a = [1,2,3]
# a.delete(a[-1]), this deletes the last from the array