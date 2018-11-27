require 'minitest/autorun'
require 'nmax'
require 'nmax/nmax_helper'

class TestNmax < Minitest::Test
  def setup; end

  def test_nmax_helper
    NmaxHelper.nmax_from_string(2, 'asd 1 gfd 2 fdsf 3')
  end

  def test_that_kitty_can_eat
    assert_equal 'OHAI!', Nmax.i_can_has_cheezburger?
  end

  def test_that_will_be_skipped
    skip 'test this later'
  end
end
