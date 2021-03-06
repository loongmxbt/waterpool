defmodule Waterpool.Category do
  use Waterpool.Web, :model

  schema "categories" do
    field :name, :string
    field :slug, :string
    field :desc, :string
    field :image, :string
    has_many :posts, Waterpool.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :slug, :desc, :image])
    |> validate_required([:name, :slug])
  end
end
