class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def status
    puts "Hal is #{switch}"
  end

  private

  def flip_switch(desired_state)
    self.switch = desired_state
  end

  attr_accessor :switch
end

Hal = Machine.new

Hal.start
Hal.status
Hal.stop
Hal.status