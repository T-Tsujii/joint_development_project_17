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

  
  private
  def message_params
    params.permit(:title, :content)
  end

end
