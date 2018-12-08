# frozen_string_literal: true

require 'nmax/version'
require 'nmax/nmax_helper'

# :nodoc:
module Nmax
  def self.call(count_argument = 0, input_data = '')
    output_count = count_argument.to_i
    return [] if output_count < 1

    NmaxHelper.nmax_from_string(output_count, input_data)
  end
end
