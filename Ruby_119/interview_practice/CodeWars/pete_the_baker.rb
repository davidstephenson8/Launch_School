=begin
problem
create a method that returns an integer representing how many items can be baked with a given recipe given a specific
amount of available ingredients. 
examples
recipe {"flour"=>500, "sugar"=>200, "eggs"=>1}
ingredients {"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}
output: 2
recipe {"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100}
ingredients {"sugar"=>500, "flour"=>2000, "milk"=>2000}
output: 0
algorithm
initialize `ratios` to an empty array
iterate through the recipe hash
  if a key in the recipes hash isn't in the available hash, return 0
  for each key in the recipe hash, divide the value in the available hash corresponding to that key by the value in
    the recipe hash
  store this value in ratios 

set answer to the minimum value found in ratios
=end

def cakes(recipe, available)
  items = []
  recipe.each do |ingredient, amount|
    if available[ingredient].nil?
      return 0 
    else
      items << available[ingredient]/recipe[ingredient]
    end
  end
  items.min
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1
