ENCRYPTED_PIONEERS = [
"Nqn Ybirynpr",
"Tenpr Ubccre",
"Nqryr Tbyqfgvar",
"Nyna Ghevat",
"Puneyrf Onoontr",
"Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
"Wbua Ngnanfbss",
"Ybvf Unvog",
"Pynhqr Funaaba",
"Fgrir Wbof",
"Ovyy Tngrf",
"Gvz Orearef-Yrr",
"Fgrir Jbmavnx",
"Xbaenq Mhfr",
"Fve Nagbal Ubner",
"Zneiva Zvafxl",
"Lhxvuveb Zngfhzbgb",
"Unllvz Fybavzfxv",
"Tregehqr Oynapu"
]

conversion = {}

("a".."z").each_with_index do |letter, index|
  conversion[letter] = index + 1
end

pioneer_chars = ENCRYPTED_PIONEERS.map do |pioneer|
  pioneer.chars
end

pioneer_nums = pioneer_chars.map do |pioneer|
  pioneer.map do |char|
    if char == " " || char == "-"
      char
    else
      conversion[char.downcase]
    end
  end
end

pioneer_true = pioneer_nums.map do |pioneer|
  pioneer.map do |char|
   char.instance_of?(Integer)
  end
end

converted_pioneer_chars = pioneer_nums.map do |pioneer|
  pioneer.map do |num|
    if num.instance_of?(Integer)
      if num < 14
        conversion.key(num + 13)
      else
        conversion.key(num - 13)
      end
    else
      num
    end
  end
end

capitalized_pioneers = converted_pioneer_chars.map.with_index do |pioneer, index1|
  pioneer.map.with_index do |char, index2|
    if pioneer_chars[index1][index2] == pioneer_chars[index1][index2].capitalize
      char.capitalize
    else
      char
    end
  end
end

p capitalized_pioneers.map(&:join)
