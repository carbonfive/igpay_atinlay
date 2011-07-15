String.class_eval do
  def to_pig_latin
    self.split(/(\s+)/).collect do |word|
      #puts "#{word}.pig_latin_friendly? ==> #{word.pig_latin_friendly? ? 'true' : 'false'}"
      if ! word.pig_latin_friendly?
        word
      else
        word.match /^(qu|[^aeiou]*)(.+?)([^a-z]*)$/i do |m|
          first, middle, punc = m[1], m[2], m[3]
          middle.capitalize! if first =~ /^[A-Z]/
          middle + first.downcase + 'ay' + punc
        end
      end
    end.join
  end

  protected

  def pig_latin_friendly?
    self =~ /^[a-z']+[^a-z0-9]*$/i
  end
end
