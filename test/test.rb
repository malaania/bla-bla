require 'minitest/autorun'
require 'bla-bla'

class BlaTest < MiniTest::Unit::TestCase

  WORD_LIST = BlaBla::WORD_LIST

  def test_generate_author
    assert(BlaBla.author.split { |word| WORD_LIST.include?(word) },"Author name not from WORD_LIST")
    assert_equal(2,BlaBla.author.split.length)
  end

  def test_generate_title
    assert(BlaBla.title.split { |word| WORD_LIST.include?(word) },"Title not from WORD_LIST")
    assert(1 <= BlaBla.title.split.length , "Title too short")
    assert( BlaBla.title.split.length <= 5 , "Title too long")
  end

  def test_generate_sentence
    assert(BlaBla.generate_sentence.split { |word| WORD_LIST.include?(word) },"Sentence not from WORD_LIST")
    assert( 5 <= BlaBla.generate_sentence.split.length , "Sentence too short")
    assert( BlaBla.generate_sentence.split.length <= 10 , "Sentence too long")
  end

  def test_generate_content
    assert( BlaBla.content.split(".").length <= 5, "Content too long")
    assert( 1 <= BlaBla.content.split(".").length , "Content too short")
  end
end