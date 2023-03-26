def staggered_case(string)
  characters = string.chars
  n = 0
  characters.map! do |char|
    if n.even?
      char.upcase!
    elsif n.odd?
      char.downcase!
    end
    n += 1 
    char
  end
  p characters.join
end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'