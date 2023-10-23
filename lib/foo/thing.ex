defmodule Foo.Thing do
  @moduledoc """
  Whatever
  """

  use Ecto.Schema

  import Ecto.Changeset

  schema "things" do
    field :data, :map

    timestamps()
  end

  @doc false
  def changeset(thing, attrs) do
    thing
    |> cast(attrs, [:data])
    |> validate_required([:data])
  end
end
