class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale
 
  def set_locale
    if ['ru', 'en'].include? params[:locale]
      I18n.locale = params[:locale] 
    else
      I18n.locale = I18n.default_locale
    end

    logger.debug "[u] locale set to #{I18n.locale}"
  end

  # Override build_footer method in ActiveAdmin::Views::Pages
  require 'active_admin_views_pages_base.rb'
end
