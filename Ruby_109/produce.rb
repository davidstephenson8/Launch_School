produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(list_of_foods)
  produce_keys = list_of_foods.keys
  i = 0
  fruit = {}
  loop do
    food_category = list_of_foods[produce_keys[i]]
    fruit[produce_keys[i]] = food_category if food_category == "Fruit"
    break if i == list_of_foods.size
    i += 1 
  end
  fruit
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

