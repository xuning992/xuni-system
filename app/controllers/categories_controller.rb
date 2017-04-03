class CategoriesController < ApplicationController
  before_action :set_category, only: [:destroy, :show, :edit, :update]
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end
  
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: "更新成功"}
      else
        format.html { render :edit}
      end
    end
  
  end
  
  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html {redirect_to categories_path, notice: '保存成功'}
        format.json { render :show, status: :created, location:@category}
      else
        format.html {render :new}
      end
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def destroy
    @category.destroy
    respond_to do |format|
      format.html {redirect_to categories_url,notice: "删除成功"}
    end
  end
  private
  # 根据id获取某条记录
  def set_category
    @category = Category.find(params[:id])
  end
  
  # 更新字段
  def category_params
    params.require(:category).permit(:name)
  end
end
