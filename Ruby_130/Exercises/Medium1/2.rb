class TextAnalyzer
  def process
    text = File.open("sample_text.txt", "r")
    puts text
  end
end

analyzer = TextAnalyzer.new
analyzer.process { # your implementation }
analyzer.process { # your implementation }
analyzer.process { # your implementation }