class Book
  attr_accessor :title

  SKIP_WORDS = [ "and", "in", "the", "of", "a", "an" ]

  def title
    word_array = @title.split(" ")
    titleize(word_array)
  end

  private

  def skip_cap?(word)
    SKIP_WORDS.include?(word)
  end

  def capitalize_or_not(word)
    skip_cap?(word) ? word : word.capitalize
  end

  def titleize(word_array)
    word_array.first.capitalize!
    titleized = word_array.collect { |word| capitalize_or_not(word) }
    titleized.join(" ")
  end
end