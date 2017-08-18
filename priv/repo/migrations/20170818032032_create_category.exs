defmodule Waterpool.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :desc, :string
      add :image, :string

      timestamps()
    end

  end
end
