birds = %w(raven finch hawk eagle)
def organize(array)
  yield(array)
end

organize(birds) do |_, _, *raptors|
  puts raptors
end
