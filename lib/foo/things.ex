defmodule Foo.Things do
  import Ecto.Query

  alias Foo.Repo
  alias Foo.Thing


  def create_thing(attrs) do
    %Thing{}
    |> Thing.changeset(attrs)
    |> Repo.insert()
  end

  def list_things() do
    Repo.all(
      from(t in Thing)
    )
  end
end
