class Series
  def initialize(series)
    @series = series
  end

  def slices(int)
    raise ArgumentError if int > @series.size
    @series.chars.each_cons(int).to_a.each do |arr|
      arr.map!(&:to_i)
    end
  end
end
