Rails.application.routes.draw do
  get 'questions/show'
  get 'survey/:survey_id', to: 'survey_responses#new'

  resources :surveys, only: [] do
    resources :survey_responses, only: :create
  end

  resources :survey_responses, only: [] do
    resources :questions, only: [:show, :create]
  end
end
