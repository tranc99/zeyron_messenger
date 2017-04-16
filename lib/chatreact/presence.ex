defmodule Chatreact.Presence do
  use Phoenix.Presence, opt_app: :chat_react, pubsub_server: Chatreact.PubSub
end
