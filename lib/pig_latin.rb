class PigLatin
  VOWELS = ["a", "e", "i", "o", "u"]

  def initialize(words)
    @words = words.split(" ")
  end

  def translate
    @words.map { |word|
      characters = word.chars

      if VOWELS.include?(characters.first)
        characters << "ay"
      else
        first = characters.shift
        characters << first
        characters << "ay"
      end
      characters.join("")
    }.join(" ")
  end
end
