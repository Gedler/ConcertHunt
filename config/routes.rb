Rails.application.routes.draw do
  resources :followers   #give access to all the controllers so actions can display
  resources :attending_concerts
  resources :concerts
  resources :fans
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get "/artists", to: "artists#index" #if a user goes on this link display all artists
  get "/artist/:id", to: "artists#show"
  delete "/artist/:id", to: "artists#destroy"
  patch "/artist/:id", to: "artists#update"
  post  "/artist/new", to: "artists#create"


  get "/concerts", to: "concerts#index" 
  get "/concert/:id", to: "concerts#show" 
  patch "/concert/:id", to: "concerts#update"
  post "/concert/new", to: "concerts#create"
  delete "concert/:id", to: "concerts#destroy"

  get "/fans", to: "fans#index"
  get "/fan/:id", to: "fans#show"
  post "fan/new", to: "fans#create"
  patch "fan/:id", to: "fans#update"
  delete "fan/:id", to: "fans#destroy"


  get "/attendingconcerts", to: "attending_concerts#index"
  get "/attendingconcert/:id", to: "attending_concerts#show"
  post "attendingconcert/new", to: "attending_concerts#create"

  get "/followers/", to: "followers#index"
  get "/follower/:id", to: "followers#show"
end



#If you're in React how can you access attributes from your JSON server? 


#Fetch to the URL 
# access the array and put its value in a usestate variable 
# pass it down as a prop 
# map over it since it is an array 
# in the map return the class card 
# the name of the variable that made the map should be passed in the return 
# the variable returned the class card so the class card will display 
# youll be able to acess the keys of the objects inside the array using map 
# to access the associations you must call on the instance methods inside the model