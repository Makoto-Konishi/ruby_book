require 'minitest/autorun'

class SampleTest < MiniTest::Test
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end

  def test_error
    assert_equal 'Java', 'java'.capitalize
  end
end

