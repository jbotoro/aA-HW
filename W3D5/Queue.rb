class Queue
   def initialize
    @i = Array.new
   end

   def enqueue(el)
    @i.push(el)
   end

   def dequeue
    @i.shift
    self
   end

   def peek
    @i.first
   end
end
