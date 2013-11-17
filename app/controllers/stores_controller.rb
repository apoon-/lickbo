class StoresController < ApplicationController
  def index
    @stores = JSON.parse(open('http://lcboapi.com/stores?per_page=60').read)
  end

  def show
    store_json = open("http://lcboapi.com/stores/#{params[:id]}").read
    index_json = JSON.parse(store_json)
    @store = index_json['result']
  end
end
