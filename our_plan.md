# Dustin & Toni's Plan

Challenges
- As a developer, I have been commissioned to create an application where a user can see and create blog posts.
- As a developer, I can create a full-stack Rails application.
- As a developer, my blog post can have a title and content.
- As a developer, I can add new blog posts directly to my database.
`$ BlogPost.create(title: 'Tonis Blog Post', content: 'This is the content text for Tonis blog post')`
`$ BlogPost.create(title: 'Dustins Blog Post', content: 'This is the content text for Dustins blog post')`

As a user, I can see all the blog titles listed on the home page of the application.
```index.html.erb
<h1>Blog App</h1>
<ul>
  <% @posts.each do |post| %>
    <li>
      <%= post.title %>
    </li>
  <% end %>
</ul>
```
As a user, I can click on the title of a blog and be routed to a page where I see the title and content of the blog post I selected.
```index.html.erb
<h1>Blog App</h1>
<ul>
  <% @posts.each do |post| %>
    <li>
         <%= link_to post.title, blog_posts_path(post) %>
    </li>
  <% end %>
</ul>
```
As a user, I can navigate from the show page back to the home page.
As a user, I see a form where I can create a new blog post.
As a user, I can click a button that will take me from the home page to a page where I can create a blog post.
As a user, I can navigate from the form back to the home page.
As a user, I can click a button that will submit my blog post to the database.
As a user, I when I submit my post, I am redirected to the home page.
Stretch Challenges
As a user, I can delete my blog post.
As a user, I can update my blog post.
As a developer, I can ensure that all blog posts have titles and content for each post.
As a developer, I can ensure that all blog post titles are unique.
As a developer, I can ensure that blog post titles are at least 10 characters.

`rails new full-stack-ds-tt -d postgresql -T`
`cd full-stack-ds-tt`
`rails db:create`

`bundle add rspec-rails`
`rails generate rspec:install`
`rails generate model BlogPost title:string content:string`
`rails db:migrate`
`rails generate controller BlogPost`
`rails db:migrate`

# Controller
def index
  @posts = BlogPost.all
end
# config/routes.rb
get 'posts' => 'blogpost#index'

<h1>Blog App</h1>

# View - Create file - /views/blog_post/index.html.erb
<ul>
  <% @posts.each do |post| %>
    <li>
      <%= post.title %>
    </li>
  <% end %>
</ul>