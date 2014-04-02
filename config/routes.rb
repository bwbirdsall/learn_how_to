LearnHow::Application.routes.draw do
  match('/', {:via => :get, :to => 'static_pages#index'})
  match('/lessons/', {:via => :get, :to => 'lessons#index'})
  match('/lessons/new', {:via => :get, :to => 'lessons#new'})
  match('/lessons/new', {:via => :post, :to => 'lessons#create'})
  match('/chapters/', {:via => :get, :to => 'chapters#index'})
  match('/chapters/new', {:via => :get, :to => 'chapters#new'})
  match('/chapters/new', {:via => :post, :to => 'chapters#create'})
  match('/sections/', {:via => :get, :to => 'sections#index'})
  match('/sections/new', {:via => :get, :to => 'sections#new'})
  match('/sections/new', {:via => :post, :to => 'sections#create'})
end
