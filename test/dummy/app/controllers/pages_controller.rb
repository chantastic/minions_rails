class PagesController < ApplicationController
  def index
  end

  def css_development
    render layout: "css_development"
  end

  def css_production
    render layout: "css_production"
  end

  def scss_development
    render layout: "scss_development"
  end

  def scss_production
    render layout: "scss_production"
  end
end
