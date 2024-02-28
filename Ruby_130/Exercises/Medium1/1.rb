class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen(&block)
    record(block.call) if block_given?
  end

  def play
    @recordings[-1]
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
p listener.play # Outputs "Hello World!"