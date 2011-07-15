String.class_eval do
  def to_pig_latin
    self.split(/(\-|\s+)/).collect do |word|
      if ! word.pig_latin_friendly?
        word
      else
        word.match /^(qu|[^aeiou]*)(.+?)([^a-z]*)$/i do |m|
          first, punc = m[2] + m[1], m[3]
          first.capitalize! if word =~ /^[A-Z]/
          last = (first.downcase == 'a' ? 'y' : 'ay')
          first + last + punc
        end
      end
    end.join
  end

  protected

  def pig_latin_friendly?
    self =~ /^[a-z']+[^a-z0-9]*$/i
  end
end
