defmodule Protoz.Domain.Post do
  defstruct [
    :id,
    :body,
    :title,
    :comments,
    :inserted_at
  ]

  def from_record(%Protoz.Schemas.Post{} = record) do
    map = Map.from_struct(record)
    post = struct(__MODULE__, map)

    comments = record.comments |> Enum.map(&Protoz.Domain.Comment.from_record/1)

    %{post | comments: comments}
  end

  def from_record(nil), do: nil
end
