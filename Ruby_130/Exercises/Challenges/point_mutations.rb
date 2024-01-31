=begin
make a DNA object with one method, hamming_distance, that enables a user to check the hamming distance between two different DNA sequences. 
hamming distance is the total number of differences in the bases of two DNA strands
If the strands are two different lengths, the shorter strand should be compared to the corresponding bases from the larger strand. 
the hamming distance method has the set of bases the original strand should be compared to passed into it.
A
hamming distance
  convert both sets of bases to arrays 
  determine which set of bases is shorter, iterate through the shorter set of bases
  initialize `iterated_bases` to `other_bases` and comparison bases to bases if `other_bases` is smaller than `bases`
    otherwise, assign `iterated_bases` to `bases` and `other_bases` to `comparison_bases` 
  initialize `differences`` to 0
  iterate through `iterate_bases` taking note of index
    if iterate bases at the given index is different from comparison bases, increment `differences`
  return differences
=end

class DNA
  attr_reader :bases

  def initialize(bases)
    @bases = bases
  end

  def hamming_distance(other_bases)
    bases_array = bases.split("")
    other_bases_array = other_bases.split("")
    if other_bases_array.size < bases_array.size
      iterated_bases = other_bases_array
      comparison_bases = bases_array
    else
      iterated_bases = bases_array
      comparison_bases = other_bases_array
    end
    differences = 0
    iterated_bases.each_with_index do |base, index|
      differences += 1 if base != comparison_bases[index]
    end

    differences
  end
end
