defmodule Protoz.Domain.Comment do
  defstruct [
    :id,
    :text,
    :post_id,
    :inserted_at
  ]

  def from_record(%Protoz.Schemas.Comment{} = record) do
    map = Map.from_struct(record)

    struct(__MODULE__, map)
  end

  def from_record(nil), do: nil
end
