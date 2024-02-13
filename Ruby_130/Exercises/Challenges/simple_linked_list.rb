class Element
  def initialize(data, next_element = nil)
    @next_element = next_element
    @data = data
  end

  def datum
    @data
  end

  def tail?
    true unless @next_element
  end

  def next
    @next_element 
  end

  def to_s
    "data: #{@data}"
    "next_element #{@next_element}"
  end
end

class SimpleLinkedList
  def initialize
    @list = []
  end

  def size
    @list.size
  end

  def empty?
    @list.empty?
  end

  def push(ele)
    if @list.empty?
      @list << Element.new(ele)
    else  
      @list << Element.new(ele, @list[-1])
    end
  end

  def peek
    if @list[-1]
      @list[-1].datum 
    else
      @list[-1]
    end
  end

  def head
    @list[-1]
  end

  def pop
    @list.pop.datum
  end

  def self.from_a(array)
    result = SimpleLinkedList.new
    return result if array == nil 
    array.reverse.each do |element|
      result.push(element)
    end
    result
  end

  def to_a
    @list.reverse.map do |ele|
      ele.datum
    end
  end

  def reverse
    result = SimpleLinkedList.new
    @list.reverse.each do |ele|
      result.push(ele.datum)
    end
    result
  end
end

list = SimpleLinkedList.new
list.push(1)
list.push(2)
p list
p list.reverse