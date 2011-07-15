require 'minitest/autorun'
require 'iglatinpay'

class IglatinpayTest < MiniTest::Spec
  describe 'single word' do
    it 'appends "ay" to the end of the word' do
      'hello'.to_piglatin.must_equal 'ellohay'
    end
  end
  describe 'multiple words' do
    it 'splits the words on whitespace' do
      'hello world'.to_piglatin.must_equal 'ellohay orldway'
    end
  end
  describe 'capitalization' do
    it 'keeps the first letter capitalized' do
      'Hello World'.to_piglatin.must_equal 'Ellohay Orldway'
    end
  end
  describe 'punctuation' do
    it 'keeps any punctuation at the end' do
      'Hello, World!!'.to_piglatin.must_equal 'Ellohay, Orldway!!'
    end
  end
  describe 'multiple consonants or vowels at the beginning of a word' do
    it 'keeps consonants at the beginning of a word together' do
      'Quick brown Oxen'.to_piglatin.must_equal 'Ickquay ownbray Oxenay'
    end
  end
  describe 'vowels' do
    it 'keeps vowels at the beginning of the word intact' do
      ''.to_piglatin.must_equal ''
    end
  end
  describe 'whitespace' do
    it 'splits on all whitespace and keeps it intact' do
      'Hello...  world!'.to_piglatin.must_equal 'Ellohay...  orldway!'
    end
  end
  describe 'non-word words' do
    it 'does not translate non-word words' do
      'hello 12345 world'.to_piglatin.must_equal 'ellohay 12345 orldway'
    end
  end
end

#assert_equal 'ellohay', 'hello'.to_pig_latin
#assert_equal 'ellohay orldway', 'hello world'.to_pig_latin
#assert_equal 'Ellohay Orldway', 'Hello World'.to_pig_latin
#assert_equal 'Ellohay, Orldway!!', 'Hello, World!!'.to_pig_latin
#assert_equal 'Ickquay ownbray Oxenay', 'Quick brown Oxen'.to_pig_latin
#assert_equal 'Ellohay...  orldway!', 'Hello...  world!'.to_pig_latin
#assert_equal 'ellohay 12345 orldway', 'hello 12345 world'.to_pig_latin
