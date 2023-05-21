Rails.application.routes.draw do
  root "hello#index"
  get '/blogs', to: 'blog#index'
  get '/first', to: 'blog#get_first_name'

  get '/create_blog', to: 'blog#create_blog'


end
