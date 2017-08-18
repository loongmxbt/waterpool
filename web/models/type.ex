defmodule Waterpool.Type do
  use Waterpool.Web, :model

  schema "types" do
    field :name, :string
    field :desc, :string
    has_many :posts, Waterpool.Post

  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :desc])
    |> validate_required([:name])
  end
end
