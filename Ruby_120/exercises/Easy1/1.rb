class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{"-" * @message.size}-+"
  end

  def empty_line
    "| #{" " * @message.size} |"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('')
puts banner

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

#Further Exploration

class Banner
  def initialize(message, width = 4)
    @message = message
    if width < 4
      @width = 4
    elsif width > 80
      @width = 80
    else
      @width = width
    end
  end

  def to_s
    return "Message too large for specified width" if @message.size > @width
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{"-" * @width}-+"
  end

  def empty_line
    "| #{" " *  @width} |"
  end

  def message_line
    "| #{@message.center(@width)} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 78)
puts banner

banner = Banner.new('To boldly go where no one has gone before.', 4)
puts banner
