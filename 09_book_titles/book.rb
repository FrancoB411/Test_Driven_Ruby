class Book
  attr_accessor :title

  SKIP_WORDS = [ "and", "in", "the", "of", "a", "an" ]

  def title
    titleize(@title)
  end

private

  def titleize(title)
    title_words = make_word_array(title.capitalize)
    titleized = title_words.collect { |word| capitalize_or_not(word) }
    titleized.join(" ")
  end

  def make_word_array(title)
    title.split(" ")
  end

  def capitalize_or_not(word)
    SKIP_WORDS.include?(word) ? word : word.capitalize
  end

end