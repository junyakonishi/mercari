class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    
  end

  def get_category
    selected_category = Category.find(params[:category_id])
    @categories=selected_category.children
  end
  
  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @categories = Category.roots
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      @categories=Category.roots
      render :edit
    end
  end


  def destroy
    item = Item.find(params[:id])
    if current_user.id == item.user.id
      item.destroy
      redirect_to root_path
    else
      redirect_to item_path(item.id)
    end
  end

  def buyconfirm
  end 

  def card_new
    @years=["--"]
    11.times do |index|
      this_year=Date.today.year%100
      @years.push(this_year+index)
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :info, :image,:category_id, :status_id, :delivery_fee_id, :delivery_days_id, :prefecture_id, :price).merge(user_id: 1)
  end

end