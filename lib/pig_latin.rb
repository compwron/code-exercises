class PigLatin
  VOWELS = ["a", "e", "i", "o", "u"]

  def initialize(phrase)
    @phrase = phrase
  end

  def translate
    @phrase.gsub(/[A-Za-z]+/) { |word|
      translate_word(word)
    }
  end

  private

  def translate_word(word)
    characters = word.chars
    if !VOWELS.include?(characters.first.downcase)
      index_of_vowel = VOWELS.map {|v| word.index(v)}.compact.min
      prefix = word[0...index_of_vowel]
      postfix = word[index_of_vowel..-1]
      result = postfix + prefix.downcase
    else
      result = word
    end
    result += "ay"
    if capitalized?(word[0])
      result.capitalize!
    end
    result
  end

  def capitalized?(char)
    !!(char =~ /[A-Z]/)
  end
end
