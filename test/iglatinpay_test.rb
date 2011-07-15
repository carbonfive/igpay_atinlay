require 'minitest/autorun'
require 'iglatinpay'

class IglatinpayTest < MiniTest::Spec
  describe 'single word' do
    it 'appends "ay" to the end of the word' do
      'hello'.to_pig_latin.must_equal 'ellohay'
    end
  end
  describe 'multiple words' do
    it 'splits the words on whitespace' do
      'hello world'.to_pig_latin.must_equal 'ellohay orldway'
    end
  end
  describe 'capitalization' do
    it 'keeps the first letter capitalized' do
      'Hello World'.to_pig_latin.must_equal 'Ellohay Orldway'
    end
  end
  describe 'punctuation at the end of a word' do
    it 'keeps any punctuation at the end' do
      'Hello, World!!'.to_pig_latin.must_equal 'Ellohay, Orldway!!'
    end
  end
  describe 'punctuation within a word' do
    it 'keeps punctuation within the word' do
      "Mike's computer".to_pig_latin.must_equal "Ike'smay omputercay"
    end
  end
  describe 'multiple consonants at the beginning of a word' do
    it 'keeps consonants at the beginning of a word together' do
      'Quick brown fox'.to_pig_latin.must_equal 'Ickquay ownbray oxfay'
    end
  end
  describe 'vowels at the beginning of a word' do
    it 'keeps vowels at the beginning of the word intact' do
      'eat apples'.to_pig_latin.must_equal 'eatay applesay'
    end
  end
  describe 'whitespace' do
    it 'splits on all whitespace and keeps it intact' do
      'Hello...  world!'.to_pig_latin.must_equal 'Ellohay...  orldway!'
    end
  end
  describe 'non-word words' do
    it 'does not translate non-word words' do
      'hello 12345 abc123 ab123cd world'.to_pig_latin.must_equal 'ellohay 12345 abc123 ab123cd orldway'
    end
  end
  describe 'edge cases' do
    it 'converts "a" to "ay", not "aay"' do
      'a'.to_pig_latin.must_equal 'ay'
    end
  end
  describe 'hyphens' do
    it 'splits hyphenated words up' do
      'rob is a bad-ass'.to_pig_latin.must_equal 'obray isay ay adbay-assay'
    end
  end
end
