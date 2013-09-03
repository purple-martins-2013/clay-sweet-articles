SweetArticlesRails::Application.routes.draw do
  root to: 'articles#index'

  get '/articles/:month/:day/:year/:title', to: 'articles#redirect'

  get '/categories/:category_name/articles/:title', to: 'articles#show', as: 'category_article'

  get '/categories/:name/articles', to: 'categories#show', as: 'category'

  get '/tag/:name/articles', to: 'tags#show', as: 'tag'
end
