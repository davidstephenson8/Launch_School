class Verse
  def initialize(number)
    @number = number
  end

  def verse_lyrics
    case @number
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{@number} bottles of beer on the wall, #{@number} bottles of beer.\n" \
      "Take one down and pass it around, #{@number - 1} bottles of beer on the wall.\n"
    end
  end
end

class BeerSong
  def self.verse(number)
    #lyrics for a verse
    verse = Verse.new(number)
    verse.verse_lyrics
  end

  def self.verses(number1, number2)
    results = []
    (number2..number1).to_a.reverse.each do |num|
      results << BeerSong.verse(num)
    end
    results.join("\n")
  end

  def self.lyrics
    self.verses(99, 0)
  end
end