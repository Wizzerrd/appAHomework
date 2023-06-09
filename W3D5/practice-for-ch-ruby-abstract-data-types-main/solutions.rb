class Stack
  def initialize
    @ivar = []
  end

  def push(el)
   @ivar << el
  end

  def pop
   @ivar.pop
  end

  def peek
   @ivar.last
  end
end

class Queue

    def initialize
        @ivar = []
    end

    def enqueue(el)
       @ivar.unshift(el)
    end

    def dequeue
       @ivar.pop
    end

    def peek
       @ivar.last
    end
end

class Map
    def initialize
        @ivar = []
    end

    def set(key,value)
       @ivar << [[key],[value]]
    end 

    def get(key)
       @ivar.select {|ele| ele[0] == key}.last
    end

    def delete(key)
       @ivar.select!{|ele| ele[0] != key}
    end

    def show
        h = {}
        @ivar.each {|ele| h[ele[0] = ele[1]]}
        puts h
    end
end