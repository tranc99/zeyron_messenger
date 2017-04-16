defmodule Chatreact.RoomChannel do
  use Phoenix.Channel

  use Timex
  alias Chatreact.Presence

  def join("room:" <> _room_name, _message, socket) do
    send(self, :after_join)
    {:ok, socket}
  end
end
