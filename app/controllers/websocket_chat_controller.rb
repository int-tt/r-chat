#WebSocketRails::BaseControllerを継承

class WebsocketChatController < WebsocketRails::BaseController

  def message_recieve

    # クライアントからのメッセージを取得
    recieve_message = message()
    # websocket_chatイベントで接続しているクライアントにブロードキャスト
    broadcast_message(:websocket_chat, recieve_message)
    p "------------------------------------------------------"
    p recieve_message
    p "------------------------------------------------------"
  end
  def create_post
    #post = Post.new(message)
    #post.cook
    recieve_message = message()
    #if post.save
    WebsocketRails[:fruits].trigger 'new_post', fruits
    end
end
