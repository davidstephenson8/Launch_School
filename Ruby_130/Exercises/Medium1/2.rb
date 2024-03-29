class TextAnalyzer
  def process
    file = File.open("sample_text.txt", mode = 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split(" ").count} words" }
analyzer.process { |file| puts "#{file.split("/n").count} lines"}
analyzer.process { |file| puts "#{file.split("/n/n").count} paragraphs"}