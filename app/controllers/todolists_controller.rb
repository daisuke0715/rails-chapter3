class TodolistsController < ApplicationController

  # 新規記事投稿画面
  def new
    @lists = List.new   # データベースに値を保存する処理なので、モデルを関連づける
  end


  # 作成された記事を受け取って内容をDBに保存する処理を記載
  def create
    list = List.new(list_params)  # モデルに作成された記事の内容を受け取る処理を任せる
    list.save 
    redirect_to todolist_path(list.id)
  end

  # 全データを表示する機能を実装
  def index
    @lists = List.all  # 一つ一つのデータが配列で渡される
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

  # private => 
  private

  # 作成された記事の内容を受け取るメソッド
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

end
