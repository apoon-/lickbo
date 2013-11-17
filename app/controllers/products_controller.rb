require 'open-uri'

class ProductsController < ApplicationController

  def index
    @products = JSON.parse(open('http://lcboapi.com/products?per_page=60').read)
  end

  def show
    product_json = open("http://lcboapi.com/products/#{params[:id]}").read
    index_json = JSON.parse(product_json)
    @product = index_json['result']
  end

end
