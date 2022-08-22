defmodule ProtozWeb.PageLive do
  use ProtozWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket =
      assign_new(socket, :posts, fn ->
        Protoz.Schemas.Post
        |> Protoz.Repo.all()
        |> Protoz.Repo.preload(:comments)
        |> Enum.map(&Protoz.Domain.Post.from_record/1)
      end)

    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~L"""
    <div class="flex h-screen">
      <%= for post <- @posts do %>
        <h1><b><%= post.title %></b></h1>
        <p><%= post.body %></p>
        <div><%= Enum.count(post.comments) %> comments</div>
      <% end %>
    </div>
    """
  end
end
