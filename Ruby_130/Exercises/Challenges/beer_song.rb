

class BeerSong
  def initialize
  end

  def self.verse(*number)
    output = ""
    number.each do |num|
      first_number = num
      first_number = "no more" if first_number == 0
      if first_number == "no more"
        second_number = 99
      elsif first_number == 1
        second_number = "no more"
      else
        second_number = num - 1
      end
      if output != ""
        output << "\n#{first_number} #{first_number == 1 ? "bottle" : "bottles"} of beer on the wall, #{first_number} #{first_number == 1 ? "bottle" : "bottles"} of beer.\nTake #{first_number == 1 ? "it" : "one"} down and pass it around, #{second_number} #{second_number == 1 ? "bottle" : "bottles"} of beer on the wall.\n"
      elsif first_number == "no more"
        output << "No more bottles of beer on the wall, no more bottles of beer.\n" \
                  "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      else
        output << "#{first_number} #{first_number == 1 ? "bottle" : "bottles"} of beer on the wall, #{first_number} #{first_number == 1 ? "bottle" : "bottles"} of beer.\nTake #{first_number == 1 ? "it" : "one"} down and pass it around, #{second_number} #{second_number == 1 ? "bottle" : "bottles"} of beer on the wall.\n"
      end
    end
    output
  end

  def self.verses(num1, num2)
    verse(num1, num2)
  end

  def self.lyrics
    output = ""
    99.times do |num|
      output << verse(99 - num)
    end
    output
  end
end

puts BeerSong.verses(99, 98)