defmodule Chatreact.Router do
  use Chatreact.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Chatreact do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/rooms", RoomController, only: [:create, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Chatreact do
  #   pipe_through :api
  # end
end
