require "pry"

class CircularQueue
  attr_reader :buffer

  def initialize(buffer)
    @buffer = buffer
    @queue = Array.new
    # binding.pry
  end

  def enqueue(new_value)
    if @queue.size < @buffer
      @queue.push(new_value) 
    elsif @queue.size >= @buffer
      @queue.push(new_value)
      @queue.shift
    end
  end

  def dequeue
    @queue.shift
  end
end


queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(2)
queue.enqueue(1)
puts queue.dequeue == 2

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 1


queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil