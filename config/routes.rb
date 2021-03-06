Rails.application.routes.draw do
  get 'admins/index'

  get 'admins/update'

  devise_for :users
  resources :users
  root 'apartments#index'

  resources :apartments do
    # GET /apartments/:apartment_id/map_locations
    get 'map_location'        # Add this and the "do" "end"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admins' => 'admins#index'

  put "admins/:id" => "admins#update"

  patch "admins/:id" => "admins#update"
end
