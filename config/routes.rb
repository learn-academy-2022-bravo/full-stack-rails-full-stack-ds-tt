Rails.application.routes.draw do
  get 'posts' => 'blog_post#index', as: 'blog_posts'
  get 'posts/:id' => 'blog_post#show', as: 'post'
  root "blog_post#index"
end
