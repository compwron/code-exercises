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
    index_of_vowel = first_vowel_index(word)
    prefix = word[0...index_of_vowel]
    postfix = word[index_of_vowel..-1]
    result = postfix + prefix.downcase + "ay"
    capitalized?(word[0]) ? result.capitalize : result
  end

  def first_vowel_index(word)
    VOWELS.map { |v|
      word.downcase.index(v)
    }.compact.min
  end

  def capitalized?(char)
    !!(char =~ /[A-Z]/)
  end
end
