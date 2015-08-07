require('rspec')
require('word_count')


describe('String#word_count') do
  it("identifies a word and counts it") do
    expect(("word").word_count()).to(eq(1))
    end

    it("identifies a word in a string with multiple words") do
     expect(('meow').word_count()).to(eq(3))
   end
end
