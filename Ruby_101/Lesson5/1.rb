arr = ['10', '11', '9', '7', '8']

arr.map!{|int| int.to_i}

arr.sort!

arr.map!{|int| int.to_s}

arr