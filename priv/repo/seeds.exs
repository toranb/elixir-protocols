# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Protoz.Repo.insert!(%Protoz.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#
one = %Protoz.Schemas.Post{}
  |> Protoz.Schemas.Post.changeset(%{
    title: "first post",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam pellentesque nec nam aliquam sem et tortor. Cras adipiscing enim eu turpis. Amet nisl suscipit adipiscing bibendum est ultricies integer. Ultrices mi tempus imperdiet nulla malesuada."
  })
  |> Protoz.Repo.insert!()

_two = %Protoz.Schemas.Post{}
  |> Protoz.Schemas.Post.changeset(%{
    title: "second post",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam pellentesque nec nam aliquam sem et tortor. Cras adipiscing enim eu turpis. Amet nisl suscipit adipiscing bibendum est ultricies integer. Ultrices mi tempus imperdiet nulla malesuada."
  })
  |> Protoz.Repo.insert!()

_three = %Protoz.Schemas.Post{}
  |> Protoz.Schemas.Post.changeset(%{
    title: "third post",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam pellentesque nec nam aliquam sem et tortor. Cras adipiscing enim eu turpis. Amet nisl suscipit adipiscing bibendum est ultricies integer. Ultrices mi tempus imperdiet nulla malesuada."
  })
  |> Protoz.Repo.insert!()

_comment = %Protoz.Schemas.Comment{}
  |> Protoz.Schemas.Comment.changeset(%{
    text: "great comment",
    post_id: one.id
  })
  |> Protoz.Repo.insert!()
