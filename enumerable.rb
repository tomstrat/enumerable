module Enumerable

    def my_each
        for element in self
            yield(element)
        end
    end

    def my_each_with_index
        index = 0
        for element in self
            yield(element,index)
            index += 1
        end
    end

    def my_all?
        result = true
        for element in self
            result = false if element == false
        end
        return result
    end

    def my_any?
        result = false
        for element in self
            result = true if element == true
        end
        return result
    end

    def my_none?
        result = true
        for element in self
            result = false if element == true
        end
        return result
    end

    def my_count *find
        count = 0
        for element in self
            puts "element is #{element} find is #{find}"
            if find.length == 0
                count += 1
            elsif element == find[0]
                count += 1
            end
        end
        return count
    end

    def my_map
        new_arr = []
        for element in self
            new_arr << yield(element)
        end
        return new_arr
    end

    def my_inject init=0
        total = init
        for element in self
            total = yield(total, element)
        end
        return total
    end

end
