# frozen_string_literal: true

# :nodoc:
module NmaxHelper
  def self.nmax_from_string(count, data)
    data.scan(/\d+/)
        .flatten
        .map(&:to_i)
        .sort
        .last(count)
  end
end
