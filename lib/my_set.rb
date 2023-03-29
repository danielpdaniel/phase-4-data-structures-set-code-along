require 'pry'

# your code here
class MySet
    attr_accessor :hash

    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def self.[](*nums)
       self.new(nums)
    end
   

    def clear
        @hash = {}
        self
    end

    def each
        @hash.each do |value|
            yield value [0]
        end
        self
    end

    def inspect
        string = ""
        arr = self.hash.keys
        arr.each do |key|
            if string == ""
                string = "#{key}"
            else
                string = string + ", #{key}"
            end
        end
        "#<MySet: {#{string}}>"
        # pp self.hash
    end
end