defmodule Foo.Repo.Migrations.CreateThings do
  use Ecto.Migration

  def change do
    create table(:things) do
      add :data, :jsonb

      timestamps()
    end
  end
end
