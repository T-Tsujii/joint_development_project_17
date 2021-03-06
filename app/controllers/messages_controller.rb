class MessagesController < ApplicationController

  #一覧表示
  def index
    @messages = Message.all
  end
  

  #新規投稿
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    redirect_to messages_url
  end

  #詳細
  def show
    @message = Message.find(params[:id])
  end
  
  #編集
  def edit
    @message = Message.find(params[:id])
  end
  
  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
    redirect_to messages_url
  end
  
  #削除
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_url
  end
  
  
  private
  def message_params
    params.permit(:title, :content)
  end

end
