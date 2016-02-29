Rails.application.routes.draw do
  root to: "pages#index"
  get "/pages/css_development", to: "pages#css_development"

  mount MinionsRails::Engine => "/minions_rails"
end
