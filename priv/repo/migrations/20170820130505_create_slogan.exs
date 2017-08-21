defmodule Waterpool.Repo.Migrations.CreateSlogan do
  use Ecto.Migration

  def change do
    create table(:slogans) do
      add :author, :string
      add :body, :string

      timestamps()
    end

  end
end
