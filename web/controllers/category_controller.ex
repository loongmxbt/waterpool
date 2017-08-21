defmodule Waterpool.CategoryController do
  use Waterpool.Web, :controller

  alias Waterpool.Category


  def show(conn, %{"slug" => slug}) do
    category = Repo.get_by!(Category, slug: slug)
    posts = nil
    render(conn, "show.html", category: category, posts: posts)
  end

 
end
