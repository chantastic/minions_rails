class PagesController < ApplicationController
  def index
  end

  def css_development
    render layout: "css_development"
  end

  def css_production
    render layout: "css_production"
  end
end
