require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

before do
  @contents = File.readlines("data/toc.txt")
end

helpers do

  helpers do
    def in_paragraphs(text)
      text.split("\n\n").each_with_index.map do |line, index|
        "<p id=paragraph#{index}>#{line}</p>"
      end.join
    end
  end

end

get "/" do
  @title = %w(a an and the will).sample
  erb :home
end

get "/chapters/:number" do
  number = params[:number].to_i
  chapter_name = @contents[number - 1]

  redirect "/" unless (1..@contents.size).cover? number

  @title = "Chapter #{number}: #{chapter_name}"

  @chapter = File.read("data/chp#{number}.txt")

  erb :chapter
end

get "/show/:name" do
  params[:name]
end

get "/search" do
  
  erb :search
end

def chapters_matching(query)
  results = []

  return results unless query

  each_chapter do |number, name, contents|
    matches = {}
    contents.split("\n\n").each_with_index do |paragraph, index|
      matches[index] = paragraph if paragraph.include?(query)
    end
    results << {number: number, name: name, paragraphs: matches} if matches.any?
  end

  results
end

not_found do
  redirect "/"
end


