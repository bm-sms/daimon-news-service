Rails.application.routes.draw do
  root 'welcome#index'

  resources :posts
  resources :sites do
    resources :posts, only: %i(index show), controller: :site_posts
  end
end
