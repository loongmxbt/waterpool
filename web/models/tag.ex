defmodule Waterpool.Tag do
  use Waterpool.Web, :model

  schema "tags" do
    field :name, :string
    field :slug, :string
    field :image, :string
    field :desc, :string
    many_to_many :posts, Waterpool.Post, join_through: Waterpool.PostTag

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :slug, :image, :desc])
    |> validate_required([:name, :slug, :image, :desc])
  end
end
