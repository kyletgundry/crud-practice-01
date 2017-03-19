class ShirtsController < ApplicationController
  
  def index
    @shirts = Shirt.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    shirt = Shirt.create(
      brand: params[:brand],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )
  end

  def show
    @shirt = Shirt.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @shirt = Shirt.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def Update
    @shirt = Shirt.find_by(id: params[:id])
    @shirt.brand = params[:brand]
    @shirt.price = params[:price]
    @shirt.image = params[:image]
    @shirt.description = params[:description]
    render "update.html.erb"
  end

  def destroy
    @shirt = Shirt.find_by(id: params[:id])
    @shirt.destroy
    render "delete.html.erb"
  end
end
