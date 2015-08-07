class String
  define_method(:word_count) do |input|
    count = 0
    string = self
    while(string.include?(input))
      count += 1
      string.sub!(input, "")
    end
    return count
  end
end
