class DNA
  def initialize(sequence)
    @sequence = sequence
  end

  def shorter?(current_strand, other_strand)
    current_strand > other_strand
  end

  def hamming_distance(other_strand)
    if @sequence.size < other_strand.size
      shorter_strand = @sequence
      longer_strand = other_strand
    else
      shorter_strand = other_strand 
      longer_strand = @sequence
    end
    calculate_differences(shorter_strand, longer_strand)
  end

  def calculate_differences(shorter_strand, longer_strand)
    differences = 0
    shorter_strand.chars.each_with_index do |char, index|
      differences += 1 unless char == longer_strand[index]
    end
    differences
  end
end
