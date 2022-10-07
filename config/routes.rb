Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      resources :jobs
      resources :companies do

        resources :jobs
      end

      match '/:id/mark_deleted', to: 'companies#mark_deleted', via: :put

      resources :applies

      resources :geeks



    end
  end
  match "*path", to: "application#catch_404", via: :all

end
