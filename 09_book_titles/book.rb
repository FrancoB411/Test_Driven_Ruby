class Book
  attr_accessor :title

  def title
    titleize(@title)
  end

private

  def titleize(title)
    title_words = title.capitalizetitle.split(" ")
    titleized = title_words.collect { |word| capitalize_or_not(word) }
    titleized.join(" ")
  end

  def capitalize_or_not(word)
    skip_words.include?(word) ? word : word.capitalize
  end

  def skip_words
    [ "and", "in", "the", "of", "a", "an" ]
  end

end