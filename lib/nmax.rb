# frozen_string_literal: true

require 'nmax/version'
require 'nmax/nmax_helper'

# :nodoc:
module Nmax
  def self.call(output_count = 0, input_data = '')
    return [] if output_count < 1

    NmaxHelper.nmax_from_string(output_count, input_data)
  end
end
