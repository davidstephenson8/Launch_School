class CustomSet
  def initialize(array = [])
    @set = array
  end

  def empty?
    @set.empty?
  end

  def contains?(element)
    @set.include?(element)
  end

  def subset?(other)
    comparison = other.set
    @set.all? {|ele| comparison.include?(ele)}
  end

  def disjoint?(other)
    comparison = other.set
    !(@set.any? {|ele| comparison.include?(ele)})
  end

  def eql?(other)
    comparison = other.set
    comparison.sort.uniq == @set.sort.uniq 
  end

  def add(ele)
    @set << ele unless @set.include?(ele)
    self
  end

  def ==(other)
    @set == other.set
  end

  def intersection(other)
    comparison = other.set
    intersecting_values = []
    @set.each do |ele|
      intersecting_values.push(ele) if comparison.include?(ele)
    end
   CustomSet.new(intersecting_values)
  end

  def difference(other)
    comparison = other.set
    different_values = []
    @set.each do |ele|
      different_values.push(ele) unless comparison.include?(ele)
    end
   CustomSet.new(different_values)
  end

  def union(other)
    CustomSet.new((@set + other.set).uniq.sort)
  end

  protected

  attr_reader :set
end
