module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      stream_from "book_channel"
    end
  end
end
