require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  # respond_to :html

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

    # rout to 404
    # http://stackoverflow.com/a/4983354/66493
    def not_found
      raise ActionController::RoutingError.new('Not Found')
    rescue
      render_404
    end

    def render_404
      render file: "#{Rails.root}/public/404", status: :not_found
    end 


  private
    def after_sign_in_path_for(resource)
      flash[:notice] = "Welcome #{current_user.email} 😀"
      root_path
    end

    def after_sign_out_path_for(resource)
      flash[:notice] = "Goodbye for now, and come back again! 😀"
      root_path
    end


    # https://rails.readandwrite.io/how-to-add-friendlyid-to-your-rails-6-application/
    # 
    # Redirect to SEO friendly slug
    #
    # @param [symbol] action
    # @param [object] object
    #
    # @return [redirect]
    #
    def redirect_to_slug(action:, object:)
      redirect_to action: action, id: object.friendly_id, status: 301 unless object.friendly_id == params[:id]
    end
end
