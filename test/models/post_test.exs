defmodule Waterpool.PostTest do
  use Waterpool.ModelCase

  alias Waterpool.Post

  @valid_attrs %{body: "some content", desc: "some content", image: "some content", title: "some content", video: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
