# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w(
  css_development.css
  css_production.css
  scss_development.css
  scss_production.css
  at_mixin.css
  before_mixin.css
  only_mixin.css
  exclude_mixin.css
)
