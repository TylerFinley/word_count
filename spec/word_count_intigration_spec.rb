require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('processes the user entry and returns how many times a word has been entered') do
    visit('/')
    fill_in('word', :with => 'i am am am')
    click_button('Send')
    expect(page).to have_content(3)
  end
end
