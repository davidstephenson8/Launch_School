class Clock
  def initialize(hours, minutes)
    if hours.to_i > 23
      @hours = (hours / 24 - 1).to_s
    elsif hours.to_i <= 0 
      @hours = (24 - hours).to_s
    else
      @hours = hours.to_s
    end
    @minutes = minutes.to_s
    @hours = @hours.chars.unshift("0").join if @hours.size == 1
    @minutes = @minutes.chars.unshift("0").join if @minutes.size == 1 
  end

  def self.at(hours, minutes = 0)
    self.new(hours, minutes)
  end

  def +(addend)
    added_minutes = addend - (addend / 1440 * 1440)
    total_minutes = @hours.to_i * 60 + @minutes.to_i
    new_minutes = total_minutes + added_minutes
    new_hours = (new_minutes / 60)
    new_minutes = (new_minutes % 60)
    Clock.at(new_hours, new_minutes)
  end

  def -(subtruend)
    subtracted_minutes = subtruend - (subtruend / 1440 * 1440)
    total_minutes = @hours.to_i * 60 + @minutes.to_i
    new_minutes = total_minutes - subtracted_minutes
    new_hours = (new_minutes / 60)
    new_minutes = (new_minutes % 60)
    Clock.at(new_hours, new_minutes)
  end

  def to_s
    "#{@hours}:#{@minutes}"
  end

  def ==(other_clock)
    self.to_s == other_clock.to_s
  end
end

Clock.at(9) - 9000