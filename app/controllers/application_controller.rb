class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :set_locale

  private
  
    def set_locale
      locale = params[:locale] if params[:locale] && I18n.available_locales.member?(params[:locale].to_sym)
      I18n.locale = locale || session[:locale] || extract_locale_from_accept_language_header || I18n.default_locale
      session[:locale] = I18n.locale
    end

    def self.default_url_options
      { :locale => I18n.locale }
    end

    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
end
