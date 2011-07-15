String.class_eval do
  def to_piglatin
    self.split(/(\W+)/).collect do |word|
      if word !~ /[a-z]+[^a-z]*/i
        word
      else
        word.match /^(qu|[^aeiou]*)([a-z]+)(.*)$/i do |m|
          first, middle, punc = m[1], m[2], m[3]
          middle.capitalize! if first =~ /^[A-Z]/
          middle + first.downcase + 'ay' + punc
        end
      end
    end.join
  end
end
