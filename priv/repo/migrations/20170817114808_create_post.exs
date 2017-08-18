defmodule Waterpool.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :desc, :string
      add :image, :string
      add :video, :string
      add :body, :text

      timestamps()
    end

  end
end
