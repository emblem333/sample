class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.score = Language.get_data(list_params[:body])  #この行を追加
    tags = Vision.get_image_data(list_params[:image])#画像情報を格納
    if @list.save
      tags.each do |tag|#入ってるデータ分繰り返し
        @list.tags.create(name: tag)#データベース情報からタグを作成
    end
      redirect_to todolist_path(@list.id)
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to todolists_path
  end

  private

  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

end
