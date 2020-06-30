Rails.application.routes.draw do
  post 'home/add_sample'
  get 'home/language_parts'
  get 'home/words'

  namespace :api do
    resources :translations, only:[] do
      post :google_translate, on: :collection
    end
  end
end
