require 'nmax/version'
require 'nmax/nmax_helper'

# :nodoc:
module Nmax
  def self.start
    print 'nothing.'
  end

  def self.call(count)
    NmaxHelper.nmax_from_string(count, STDIN.gets)
  end

  def self.i_can_has_cheezburger?
    'OHAI!'
  end

  def self.will_it_blend?
    'YES!'
  end
end
