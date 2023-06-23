pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 


def find_suspects(pockets, allowed)
  return nil if pockets.values.all? {|pocket| pocket.empty?}
  suspects = pockets.select do |person, person_pockets|
    person_pockets.any? {|item| allowed.include?(item) == false}
  end
  return nil if suspects.empty? 
  suspects.keys
end

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]
