class ProductController < ApplicationController
  def index
    render json: {main:"hello"}
  end

end
