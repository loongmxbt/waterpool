defmodule Waterpool.Repo.Migrations.CreateTag do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :name, :string
      add :slug, :string
      add :image, :string
      add :desc, :string

      timestamps()
    end

  end
end
