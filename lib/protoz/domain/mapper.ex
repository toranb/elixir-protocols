defprotocol Protoz.Domain.Mapper do
  @spec from_record(any) :: any
  def from_record(record)
end

defimpl Protoz.Domain.Mapper, for: Protoz.Schemas.Post do
  def from_record(nil), do: nil

  def from_record(record) do
    map = Map.from_struct(record)
    post = struct(Protoz.Domain.Post, map)
    comments = record.comments |> Enum.map(&Protoz.Domain.Mapper.from_record/1)
    %{post | comments: comments}
  end
end

defimpl Protoz.Domain.Mapper, for: Protoz.Schemas.Comment do
  def from_record(nil), do: nil

  def from_record(record) do
    map = Map.from_struct(record)
    struct(Protoz.Domain.Comment, map)
  end
end
