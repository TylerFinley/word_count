class String
  define_method(:word_count) do
    print ' what is your string? '
    input = gets.chomp
    print ' what word are you looking for?'
    input1 = gets.chomp
    input.scan(input1)

    count = 0
    if input.include?(input1)

    count = count.+(1)
    end
    count
  end
end
