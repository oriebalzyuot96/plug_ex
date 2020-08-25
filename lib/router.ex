defmodule PlugEx.Router do
	use Plug.Router

	plug :match
	plug :dispatch
	plug Plug.Static, at: "/home", from: :server

  get "/" do
		send_resp(conn, 200, "welcome to elixir!")
	end

#task

	get "/hello" do
		send_resp(conn, 200, "Hello World!")
	end

	get "/hello/:param" do
		send_resp(conn, 200, "Hello #{param}")
	end




	match _, do: send_resp(conn, 404, "404 error not found!")
end
