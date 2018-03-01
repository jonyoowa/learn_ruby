class Book
  def title=(name)
    small_words =
      ["a", "an", "the", "to", "at", "by", "down", "for", "from", "in", "into", "like", "near", "of", "off", "on", "onto", "over" "upon", "with", "and", "as", "but", "for", "if", "nor", "once", "or", "so", "than", "that", "till", "yet"]

    words = name.split
    new_title = ""
    words.each_with_index do |word, index|
      if !small_words.include?(word) || index == 0 || word == "i"
        new_title << word.capitalize
      else
        new_title << word
      end
      new_title << " "
    end
    @title = new_title.chop
  end

  def title
    @title
  end
end
