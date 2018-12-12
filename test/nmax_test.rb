# frozen_string_literal: true

require 'minitest/autorun'
require 'nmax'

class TestNmax < Minitest::Test
  def setup
    @input_data = 'sdafdsa sdf123\n$12\r\n 1%1234/ndfsdf'
  end

  def test_that_last_two_digital_sequences_are_selected
    assert_equal [123, 1234], Nmax.call(2, @input_data)
  end

  def test_that_all_the_digital_sequences_are_selected
    assert_equal [1, 12, 123, 1234], Nmax.call(1000, @input_data)
  end

  def test_without_digital_sequence_in_input_data
    assert_equal [], Nmax.call(1000, 'adsf adsfads$%#dfsa')
  end

  def test_with_zero_output_count
    assert_equal [], Nmax.call(0, @input_data)
  end

  def test_with_negative_output_count
    assert_equal [], Nmax.call(-1, @input_data)
  end

  def test_with_empty_input_data
    assert_equal [], Nmax.call(1000, '')
  end

  def test_without_arguments
    assert_equal [], Nmax.call
  end
end
