def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid
  color == ("blue" || "green") ? true : false
end