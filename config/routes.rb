Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]

    # post "/gardens/:garden_id/plants", to: "plants#create"
  end

  resources :plants, only: [:destroy]
  # delete "/plants/:id", to: "plants#destroy"
end
