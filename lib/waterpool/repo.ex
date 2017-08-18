defmodule Waterpool.Repo do
  use Ecto.Repo, otp_app: :waterpool
  use Scrivener, page_size: 10
end
