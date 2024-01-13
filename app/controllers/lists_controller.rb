class ListsController < ApplicationController
  def new
    # viewへ渡す為のインスタンス変数に空のModelオブジェクトを生成
    @list = List.new
  end

  def create
    # 1.&2.データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    # 3.データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 4.詳細画面へリダイレクト
    redirect_to list_path(list.id)
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

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
