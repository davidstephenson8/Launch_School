class Person
attr_accessor :first_name, :last_name, :name

  def initialize(full_name)
    parts = full_name.split 
    if parts.size == 1
      @first_name = parts[0]
      @last_name = ""
    elsif parts.size == 2
      @first_name = parts[0]
      @last_name = parts[1]
    else
      puts "that's an invalid name"
    end
  end

  def name
    if !@last_name.empty?
      @first_name + " " + @last_name
    else 
      @first_name
    end
  end

  def name=(full_name)
    parts = full_name.split 
    if parts.size == 1
      @first_name = parts[0]
      @last_name = ""
    elsif parts.size == 2
      @first_name = parts[0]
      @last_name = parts[1]
    else
      puts "that's an invalid name"
    end
  end

  def to_s
    name
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"