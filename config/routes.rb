Rails.application.routes.draw do
root 'applicants#new'
get '/admin', to:'applicants#admin'
post '/applicants', to:'applicants#create'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
