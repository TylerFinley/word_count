require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:index)
end
get('/count') do
  @title = params.fetch('title').title_case()
  erb(:count)
end
