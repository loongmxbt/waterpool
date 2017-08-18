defmodule Waterpool.Post do
  use Waterpool.Web, :model

  schema "posts" do
    field :title, :string
    field :desc, :string
    field :image, :string
    field :video, :string
    field :body, :string
    belongs_to :type, Waterpool.Type
    belongs_to :category, Waterpool.Category

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :desc, :image, :video, :body])
    |> validate_required([:title, :body])
  end
end
