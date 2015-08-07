class String
  define_method(:word_count) do |input|
    count = 0
    string = self
    while(string.include?(input)
      count += 1
      string.gsub(input, "")
    end
    return count
  end
end
