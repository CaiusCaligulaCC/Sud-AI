class BlogsController < ApplicationController

  before_filter :fetch_recent

  layout "blog"

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  protected

    def fetch_recent
      @recent_blogs = Blog.all.order(updated_at: :desc).first(5)
    end

end
