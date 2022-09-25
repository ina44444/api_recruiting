Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      resources :jobs
      resources :companies do
        resources :jobs
      end
      resources :applies
      resources :geeks
      resources :companies
    end
  end
  match "*path", to: "application#catch_404", via: :all

end
