class Dictionary
  # TODO: your code goes here!
  attr_reader :entries
  def initialize
    @entries = {}
  end
#------------------------------------------
  def keywords
    @entries.keys.sort { |x, y| x <=> y }
  end
  #

  def add(entry_with_defn)
    if entry_with_defn.is_a?(Hash)
      @entries.merge!(entry_with_defn)
    elsif entry_with_defn.is_a?(String)
      @entries[entry_with_defn] = nil
    end
  end
  #

  def include?(key_word)
    # @entries.keys.include?(key_word)
    @entries.has_key?(key_word)
  end
  #

  def find(sub_key)
    @entries.select { |key_word, defn| key_word.match(sub_key) }
  end
  #

  def printable
    result = keywords.map { |key| %Q([#{key}] "#{@entries[key]}") }
    result.join("\n")
  end
end
