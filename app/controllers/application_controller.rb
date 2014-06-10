class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :load_cms_context

  private

    # Be sure to load the context of the CMS comfortable mexican sofa, even
    # if its a custom-written controller/view. This allows for customizing of
    # the footer and more with a snippet of comfortable mexican sofa.
    def load_cms_context
      @cms_site = Comfy::Cms::Site.first
      # @cms_layout = @cms_site.layouts.find_by_identifier!('default')
    end
end
