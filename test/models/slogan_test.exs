defmodule Waterpool.SloganTest do
  use Waterpool.ModelCase

  alias Waterpool.Slogan

  @valid_attrs %{author: "some content", body: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Slogan.changeset(%Slogan{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Slogan.changeset(%Slogan{}, @invalid_attrs)
    refute changeset.valid?
  end
end
