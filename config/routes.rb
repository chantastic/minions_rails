MinionsRails::Engine.routes.draw do
  root \
    to: "pages#index",
    constraints: ->(_) { Rails.env.development? || ENV['SHOW_INTERFACES_ROUTES'] }
end
