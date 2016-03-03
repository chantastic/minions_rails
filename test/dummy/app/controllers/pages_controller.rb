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

  def at_mixin
    render layout: "at_mixin"
  end

  def before_mixin
    render layout: "before_mixin"
  end

  def only_mixin
    render layout: "only_mixin"
  end

  def exclude_mixin
    render layout: "exclude_mixin"
  end
end
