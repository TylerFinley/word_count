require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/count') do
  string = params.fetch('string')
  input = params.fetch('input')
  @count = string.word_count(input)
  erb(:count)
end
