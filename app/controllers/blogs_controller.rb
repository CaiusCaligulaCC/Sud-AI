class BlogsController < ApplicationController

  layout "blog"

  def index
    @blogs = Blog.all
  end

end
