defmodule Waterpool.Repo.Migrations.AddTypeToPost do
  use Ecto.Migration

  def change do
  	alter table(:posts) do
  		add :type_id, references(:types), default: 1
  	end
  end
end
