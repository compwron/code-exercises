class PigLatin
  VOWELS = ["a", "e", "i", "o", "u"]

  def initialize(phrase)
    @phrase = phrase
  end

  def translate
    @phrase.gsub(/[A-Za-z]+/) { |word|
      characters = word.chars

      if !VOWELS.include?(characters.first.downcase)
        first = characters.shift
        characters << first.downcase
        if capitalized?(first)
          characters.first.upcase!
        end
      end
      characters << "ay"
      characters.join("")
    }
  end

  private

  def capitalized?(char)
    !!(char =~ /[A-Z]/)
  end
end
