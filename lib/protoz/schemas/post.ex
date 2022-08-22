defmodule Protoz.Schemas.Post do
  use Ecto.Schema

  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :title, :string

    has_many :comments, Protoz.Schemas.Comment

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
