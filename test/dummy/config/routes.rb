Rails.application.routes.draw do
  root to: "pages#index"

  mount MinionsRails::Engine => "/minions_rails"
end
