hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

a = hsh.each_with_object([]) do |(plant_product, description), a|
    if description[:type] == "fruit"
      a << description[:colors].each {|color| color.capitalize!}
    elsif description[:type] == "vegetable"
      a << description[:size].upcase!
    end
  end

p a 

