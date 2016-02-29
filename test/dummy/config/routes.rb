Rails.application.routes.draw do
  root to: "pages#index"
  get "/pages/css_development", to: "pages#css_development"
  get "/pages/css_production", to: "pages#css_production"
  get "/pages/scss_development", to: "pages#scss_development"
  get "/pages/scss_production", to: "pages#scss_production"

  mount MinionsRails::Engine => "/minions_rails"
end
