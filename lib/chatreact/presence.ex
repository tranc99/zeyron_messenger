defmodule Chatreact.Presence do
  use Phoenix.Presence, otp_app: :chatreact, pubsub_server: Chatreact.PubSub
end
