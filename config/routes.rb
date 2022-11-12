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

    namespace :v2 do
      get 'company/index'
      get 'company/show'
      get 'job/show'
      get 'job/index'



    end
  end

  post '/graphql', to: 'graphql#execute'   # Graphql POST запросы-
  get '/graphql', to: 'graphql#execute'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  match "*path", to: "application#catch_404", via: :all

end
