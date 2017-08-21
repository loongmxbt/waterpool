defmodule Waterpool.PostTag do
  use Waterpool.Web, :model

  schema "posts_tags" do
    belongs_to :post, Waterpool.Post
    belongs_to :tag, Waterpool.Tag

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
