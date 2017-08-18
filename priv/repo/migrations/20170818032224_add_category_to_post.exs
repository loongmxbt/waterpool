defmodule Waterpool.Repo.Migrations.AddCategoryToPost do
  use Ecto.Migration

  def change do
  	alter table(:posts) do
  		add :category_id, references(:categories), default: 1
  	end
  end
end
