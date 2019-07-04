class ProductController < ApplicationController
  protect_from_forgery with: :null_session

  #全データ取得　/product
  def index
    products = Product.order(created_at: :desc)
    render json:{main:products}
  end

  #データ閲覧　/product/(:id)
  def show
    product = Product.find_by!(title: params[:title])
    render json:{main:product}
  end

  #データ作成　/product
  def create
    product = Product.new(post_params)
    if product.save
      render json: { main: product }
    else
      render json: { main: product.errors }
    end
  end

  #データ削除　/product/(:id)
  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json:{main:product}
  end

  #データ変更　/product/(:id)
  def update
    product = Product.find(params[:id])
    if post.update(post_params)
      render json:{main:product}
    else
      render json:{main:product}
    end
  end

  private

  #取得データ処理
  def post_params
    params.require(:product).permit(:picture,:title,:main,:price)
  end

end
