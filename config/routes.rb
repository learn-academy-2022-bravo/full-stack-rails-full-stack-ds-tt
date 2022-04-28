Rails.application.routes.draw do
  get 'posts' => 'blog_post#index'
  root "blog_post#index"
end
