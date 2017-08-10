require 'test/unit'
require_relative 'hash'

class TestStringCount < Test::Unit::TestCase

  def testEmptyString
    assert_equal({}, countWords(""))
    assert_equal({}, countWords("     "))
  end

  def test_single_word
    assert_equal({"cat" => 2}, countWords("cat cat"))
    assert_equal({"cat" => 1}, countWords(" cat "))
  end

  def test_many_words
    assert_equal({"the" => 2, "cat" => 1, "sat" => 1, "on" => 1, "mat" => 1},
    countWords("the cat sat on the mat"))
  end

  def test_ignores_punctuation
    assert_equal({"the", "cat's", "mat"}, countWords("<the!> cat's, -mat-"))
  end

end
