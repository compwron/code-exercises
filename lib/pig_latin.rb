class PigLatin
  VOWELS = ["a", "e", "i", "o", "u"]

  def initialize(words)
    @words = words.split(" ")
  end

  def translate
    @words.map { |word|
      characters = word.chars
      capitalized = !!(characters.first =~ /[A-Z]/)

      if VOWELS.include?(characters.first.downcase)
        characters << "ay"
      else
        first = characters.shift
        characters << first.downcase
        characters << "ay"
        if capitalized
          characters.first.upcase!
        end
      end
      characters.join("")

    }.join(" ")
  end
end
