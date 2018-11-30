Rails.application.routes.draw do
  get 'survey/:survey_id', to: 'survey_responses#new'

  resources :survey, only: [] do
    resources :survey_responses, only: :create
  end
end
