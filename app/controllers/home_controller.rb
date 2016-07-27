class HomeController < ApplicationController
  def index
    @knows = Know.all
  end
end
