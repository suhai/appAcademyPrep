class Book
  # TODO: your code goes here!
  attr_reader :title
  IGNORABLES = ["the", "a", "an", "and", "in", "of"]

  def title=(title)
    result = title.split(" ").map(&:downcase).map.with_index do |word, i|
      IGNORABLES.include?(word) && i != 0 ? word: word.capitalize
    end
    @title = result.join(" ")
  end
end
