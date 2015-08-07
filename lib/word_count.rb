class String
  define_method(:word_count) do |comp|
    comp.downcase().scan(/(?=#{self.downcase()})/).count
  end
end
