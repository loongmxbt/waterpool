defmodule Waterpool.Repo.Migrations.CreateType do
  use Ecto.Migration

  def change do
    create table(:types) do
      add :name, :string
      add :desc, :string

    end

  end
end
