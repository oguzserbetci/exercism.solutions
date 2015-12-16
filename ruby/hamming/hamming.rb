class Hamming

  VERSION = 2

  def self.compute(a,b)
    raise ArgumentError, "DNA's must be same length." unless a.length == b.length
    (0...a.size).count {|i| a[i] != b[i]}
  end
end
