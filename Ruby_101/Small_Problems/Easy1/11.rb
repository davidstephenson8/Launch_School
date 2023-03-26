def print_in_box(string)
  string.slice!(80..string.size) if string.size > 80 
  dashes = "" 
  space = ""
  string.size.times{dashes << "-"}
  string.size.times{space << " "}
  puts "+-" + dashes + "-+"
  puts "| " + space + " |"
  puts "| " + string + " |"
  puts "| " + space + " |"
  puts "+-" + dashes + "-+"

end

print_in_box("nil")
print_in_box("to boldly go to school each day")
print_in_box("jzqffphlpgiytfjnqfmltbgxuobvtbnwoledbbazsssgpbpshoohjbvouhdnhsnjuphgcudwcyoiempiqqlcpceo")
print_in_box("jyyfhgwxlznhtndblwrlrbaqiwdpgmhdmwpozeichcmebotkvkkuvwwmtzawlnlqftgczkdhvlmifannfhygaahrif")
print_in_box("hueqsuqstujhjllfukhrxwmygaqjhpqycxlpubrgchicqjrzrnniclajehenwbbcdoyztdxrtmevgvqhzqimuecgipamj")