LearnHow::Application.routes.draw do
  match('/', {:via => :get, :to => 'static_pages#index'})

  match('/chapters/', {:via => :get, :to => 'chapters#index'})
  match('/chapters/new', {:via => :get, :to => 'chapters#new'})
  match('/chapters/new', {:via => :post, :to => 'chapters#create'})
  match('/chapters/:id', {:via => :get, :to => 'chapters#show'})
  match('/chapters/:id/edit', {:via => :get, :to => 'chapters#edit'})
  match('/chapters/:id/', {:via => [:patch, :put], :to => 'chapters#update'})

  match('/sections/', {:via => :get, :to => 'sections#index'})
  match('/sections/new', {:via => :get, :to => 'sections#new'})
  match('/sections/new', {:via => :post, :to => 'sections#create'})
  match('/sections/:id', {:via => :get, :to => 'sections#show'})
  match('/sections/:id/edit', {:via => :get, :to => 'sections#edit'})
  match('/sections/:id/', {:via => [:patch, :put], :to => 'sections#update'})

  match('/lessons/', {:via => :get, :to => 'lessons#index'})
  match('/lessons/new', {:via => :get, :to => 'lessons#new'})
  match('/lessons/new', {:via => :post, :to => 'lessons#create'})
  match('/lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('/lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('/lessons/:id/', {:via => [:patch, :put], :to => 'lessons#update'})
end
