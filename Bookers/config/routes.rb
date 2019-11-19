Rails.application.routes.draw do
  
  root to: redirect('books')
  #GET /books/:id books#index
#get '@book', action: :show, controller: 'books'
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#get '/members', to: redirect('/users')
#get ‘/members/:id', to: redirect('/users/%{id}')

#get '/books/:id', to: 'books#book', as: 'books'
#<%= link_to 'book Record', book_path(@book) %>