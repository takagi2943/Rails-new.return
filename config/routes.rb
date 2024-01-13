Rails.application.routes.draw do
  get 'lists/new'
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create' #ここを追記
  get 'lists' => 'lists#index'
  #.../lists/1や、.../lists/3に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
