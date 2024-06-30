Rails.application.routes.draw do
  
  get "/blog_posts/new", to: "blog_posts#new", as: "new_blog"
  
  get "/blog_posts/:id", to: "blog_posts#show", as: "blog_post"
  get "/blog_posts/:id/edit", to: "blog_posts#edit", as: "edit_blog"
  post "/blog_posts", to: "blog_posts#create"

  root "blog_posts#index"
  

  
end
