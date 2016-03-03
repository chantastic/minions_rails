Rails.application.routes.draw do
  root to: "pages#index"
  get "/pages/css_development", to: "pages#css_development"
  get "/pages/css_production", to: "pages#css_production"
  get "/pages/scss_development", to: "pages#scss_development"
  get "/pages/scss_production", to: "pages#scss_production"

  get "/pages/at_mixin", to: "pages#at_mixin"
  get "/pages/before_mixin", to: "pages#before_mixin"
  get "/pages/only_mixin", to: "pages#only_mixin"
  get "/pages/exclude_mixin", to: "pages#exclude_mixin"

  mount MinionsRails::Engine => "/minions_rails"
end
