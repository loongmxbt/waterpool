defmodule Waterpool.Slogan do
  use Waterpool.Web, :model

  schema "slogans" do
    field :author, :string
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:author, :body])
    |> validate_required([:author, :body])
  end
end
