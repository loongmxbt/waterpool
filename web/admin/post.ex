defmodule Waterpool.ExAdmin.Post do
  use ExAdmin.Register
  alias Waterpool.{Repo, Tag}

  register_resource Waterpool.Post do
  	form post do
  		inputs "Post data" do
        input post, :title
        input post, :image
        input post, :video
        input post, :desc
        input post, :body, type: :text
      end

  		inputs "Post meta" do
  			inputs :tags, as: :check_boxes, collection: Repo.all(Tag)
  		end
  	end

  	query do
      %{all: [preload: [:tags]]}
    end

  end
end
