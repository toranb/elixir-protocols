defmodule Protoz.Schemas.Comment do
  use Ecto.Schema

  import Ecto.Changeset

  schema "comments" do
    field :text, :string
    belongs_to :post, Protoz.Schemas.Post

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:text, :post_id])
    |> validate_required([:text, :post_id])
  end
end
