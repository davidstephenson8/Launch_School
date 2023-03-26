def staggered_case(string)
  characters = string.chars
  different_case = true

  characters.map! do |char|
    if ("a".."z").include?(char) || ("A".."Z").include?(char)
      if different_case
        different_case = !different_case
        char.upcase
      elsif !different_case
        different_case = !different_case
        char.downcase
      end
    else
      char
    end   
  end
  p characters.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'