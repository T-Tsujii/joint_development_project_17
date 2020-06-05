class MessagesController < ApplicationController


  #新規投稿
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
  end

  
  private
  def message_params
    params.permit(:message).require(:title, :content)
  end
  
end
