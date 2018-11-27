# :nodoc:
module NmaxHelper
  def self.nmax_from_string(count, string)
    string.scan(/\d+/)
          .flatten
          .map(&:to_i)
          .sort
          .last(count)
  end
end
